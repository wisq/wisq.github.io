---
layout:      post
title:       "Fooling Monosnap: An&nbsp;SSL&nbsp;Mismatch Story"
subtitle:    "Nginx saves the day, again."
description: "If you've got dots in your S3 bucket name, Monosnap can have issues uploading to it.  Here's how to fix that — and a way to work around SSL cert mismatches in general."
date:        2016-03-25 16:00:00 -0400
author:      "Wisq"
header-img:  "img/2016/03/monosnap/header.jpg"
tags:
- "tech"
- "nginx"
- "amazon s3"
- "cloudflare"
---

I decided last month that I was finally going to stop using Skitch.

There's a long story there, but let's just say that I've been a Skitch 1.0 user for almost six years, and I avoided the (much-maligned) Skitch 2.0 rewrite like the plague.  Because Skitch's image sharing servers were long dead, I maintained a customised version of [s3itch], a proxy to allow me to upload my images to Amazon S3 instead.

However, there's really only so long you can use an old, unmaintained piece of software.  When an OSX reinstall broke my (admittedly clunky) s3itch setup, I finally decided that enough was enough — it was time to bury Skitch and move on.

For my purposes, I decided that [Monosnap] was the best replacement.  It had pretty much all the same tools I needed — and unlike Skitch, I could upload my photos directly to Amazon S3, _without_ needing to maintain an extra proxy.

Hooking Monosnap up to my Amazon S3 account was easy and painless, and the "Test Connection" button told me everything was fine.  But when it actually came time to upload images, I was getting an SSL (HTTPS) error.  It didn't take long to figure out what the problem was:

## Dots in S3 bucket names: Beware!

There's two main ways to access (or upload to) an S3 bucket:

* `<bucketname>.s3.amazonaws.com/<filename>`
* `s3.amazonaws.com/<bucketname>/<filename>`

Both cases also support HTTPS — Amazon's SSL certificate is for `*.s3.amazonaws.com` (a wildcard certificate), meaning that `<bucketname>.s3.amazonaws.com` is _generally_ going to work just fine.

… That is, unless you have dots in the bucket name.  In SSL certificates, the wildcard (`*`) is only good for a **single level**.  So `*.example.com` will match `a.example.com`, but **not** `a.b.example.com`.

My image sharing website was `i.wisq.net` (for "images"), and when I set it up, I named my bucket the same.  But this meant that Monosnap was trying to upload to `i.wisq.net.s3.amazonaws.com`, which is too deep to match `*.s3.amazonaws.com` — hence the SSL error.  Oops.

### But I need those dots!

My first thought was, "okay, I'll just rename the bucket to something without dots in it."  Easy, right?

Sure — if by "easy" you mean "impossible, at least without spending a lot more than I bargained on".

So, a bit of background.  When I set up the current iteration of `wisq.net`, I put CloudFlare in front of my domain.  Although they're mainly known for protecting people from DDoS attacks, they also function as an HTTPS CDN — they cache your content to speed up access from around the world, and they can terminate SSL for you.

As part of my CloudFlare configuration, I instructed it to serve `i.wisq.net`, and to forward all HTTP requests to `i.wisq.net.s3.amazonaws.com`.  So I figured I just needed to create a `wisq-images` bucket and change the CloudFlare target to `wisq-images.s3.amazonaws.com`, right?

So I did that, and … hmm.  Requests to `i.wisq.net` were still being served by the old bucket.  What gives?  Was CloudFlare caching something?  Was it not correctly setting the `Host` header? 

… But wait.  It *is* setting the `Host` header, right?  I mean, it has to be!  If S3 gets a request for `i.wisq.net`, it's going to reject it because it's not an S3 request, right?  Surely it won't just use the `i.wisq.net` bucket?

Well, turns out that's [exactly what S3 does][s3hostname]: If you access S3 with an arbitrary domain, it uses the domain name as the bucket name.  CloudFlare wasn't rewriting the `Host` header whatsoever — you can only do that with their more expensive Enterprise plan.

(I'm pretty sure when I set up `i.wisq.net`, I just named the bucket the same because it was cute and useful.  I had no idea that I had accidentally set things up *the only possibly way.*)

With no `Host` rewriting, I realised I was very much stuck with using `i.wisq.net` as the bucket name.  Well, crap.

## Nginx to the rescue

So Amazon's `*.s3` wildcard certificate wasn't going to cut it, I couldn't rename the bucket, and there was no obvious way to tell Monosnap to ignore the SSL naming mismatch.  How could I work around this?

Well, I couldn't make Monosnap ignore a misnamed SSL cert, but I *could* tell OSX (and Monosnap) to trust a *brand new* cert.  What if I made my own (properly-named) cert and used that instead?

And so I pulled up my personal VPS, generated a self-signed `i.wisq.net.s3.amazonaws.com` cert, and set nginx up with the following configuration:

	server {
		listen 443 ssl;

		ssl_certificate     /etc/ssl/private/images-proxy.crt;
		ssl_certificate_key /etc/ssl/private/images-proxy.key;

		server_name i.wisq.net.s3.amazonaws.com;

		location / {
			proxy_pass https://i.wisq.net.s3.amazonaws.com/;
			proxy_ssl_name wildcard.s3.amazonaws.com;
			proxy_ssl_trusted_certificate /etc/ssl/certs/ca-certificates.crt;
			proxy_ssl_verify on; 
			proxy_ssl_verify_depth 9;
			client_max_body_size 10M;
		}
	}

To start, we've got the standard HTTPS `listen` and SSL setup.  Then we set the `server_name`.  So far, so simple.

Next, we set up a reverse proxy.  Here's where things get interesting.

With most nginx reverse proxies, usually it's nginx terminating HTTPS, and then talking plain HTTP (_not_ HTTPS) to your backend servers.  In the rare case that you *must* use HTTPS to reach the backend, nginx assumes it's a formality — you're assumed to be in a trusted local network environment, so it doesn't bother checking certificates.

But my requests to S3 are going back out over the internet, so I need HTTPS.  And HTTPS isn't particularly secure unless you're actually checking certificates.  So let's make that happen.

First off, I need to override the hostname that nginx verifies the cert against, because I can't use the full dotted `i.wisq.net.s3.amazonaws.com` name.  That's the issue that got us here in the first place.  Since Amazon's cert is `*.s3.amazonaws.com`, I somewhat facetiously transliterate that to `wildcard.s3.amazonaws.com`, which matches the cert.

Next, nginx needs to know the Certificate Authority.  I want nginx to behave like a normal browser, so I have it use the standard system CA library.

I turn SSL verification on with `proxy_ssl_verify`, and I set the `proxy_ssl_verify_depth`.  This is needed because there's a few levels of CA certs between the CA library and Amazon's cert.

Finally (unrelated to SSL), I set the maximum upload size with `client_max_body_size`, because the default wasn't large enough.  I don't imagine I'll be uploading images larger than 10 megs.

And we're done!  I now have a host that responds to uploads pretty much the same as Amazon would, but that uses a more appropriate certificate.

## Fooling Monosnap

The only tricky part in the client setup was making OSX trust my new certificate.  There's several guides on how to do this, but a lot of them give outdated instructions.  Really, it just comes down to this:

1. Open your certificate file using Keychain Access.  (It opens `*.pem` files by default.)
2. Import the certificate to your default keychain (usually `login`).  It should now show up under the "Certificates" category with a red "X" circle icon, meaning "untrusted".
3. Right click your cert and select "Get Info".
4. Under the "Trust" category, set "Secure Sockets Layer (SSL)" to "Always Trust".
5. Close the info window.  (You'll probably need to supply your password.)  The cert should now show a blue "+" icon, meaning "trusted".

Now I just needed to send Monosnap to the correct host.  If you've done web development, you probably know the drill by now: I fired up `sudo vi /etc/hosts` in a terminal, added

	152.20.82.131	i.wisq.net.s3.amazonaws.com

(using the IP of my VPS) on a new line, and saved it.

### Testing

Final step: testing it!  `curl -v` was the simplest way to start — not uploading anything, just fetching an existing file to see if it works, and uses the right IP, and trusts the certificate.

Next up, testing whether nginx is verifying SSL correctly.  I messed with some of the SSL parameters in the nginx config — for example, deliberately screwing up the `proxy_ssl_name` so it no longer matched Amazon's cert — and made sure nginx gave me the usual `502 Bad Gateway` error.

And finally, testing it out in Monosnap itself.  Success!  Uploads are now as seamless as they were always meant to be, and I've finally got the simple image editing and sharing tool that Skitch once was.

## What's next?

Obviously, I'm a little sad that I still need to run a proxy to upload images to S3.  Still, this new setup is significantly better than my s3itch proxy was — it's a simple nginx configuration, it runs HTTPS throughout, it runs on my VPS instead of on my laptop, and it doesn't need to store my S3 credentials on the server.

I'll be reporting this issue to Monosnap as a bug, and referencing this post.  I'm hoping they'll either switch to using just `s3.amazonaws.com/bucketname`, or tweak their SSL client to correctly verify against the `*.s3.amazonaws.com` certificate.

All in all, I still call myself a happy Monosnap user, and I'll continue to use it.  I think I've discovered most of the bugs affecting my use of it, and none of them are major enough to be a huge problem.

But yeah, I still miss my Skitch 1.0.  Rest in peace, Skitch.

[s3itch]: https://github.com/roidrage/s3itch "roidrage/s3itch: An S3 proxy for Skitch's WebDAV sharing support — GitHub"
[monosnap]: https://monosnap.com/ "Monosnap – Free Screenshare Tool"
[s3hostname]: https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket "Virtual Hosting of Buckets – Amazon Simple Storage Service"
