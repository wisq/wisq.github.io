---
layout:      post
title:       "Monitoring UPSes with NUT and Datadog"
subtitle:    "My home UPS setup, and how I got there."
description: "TBD"
author:      "Wisq"
header-img:  "img/2016/03/monosnap/header.jpg"
tags:
- "tech"
- "ups"
- "networkupstools"
- "datadog"
- "pushover"
---

Living deep in the city, and with my power supplied by underground cabling, I've generally tended to take clean, relable power for granted.

I used to run Uninterruptible Power Supplies (UPSes) at home, but they were office surplus (for free) and fairly superfluous.  I got rid of them once the batteries died and the units became liabilities, squealing loudly or even shutting down every time they failed their regular automatic self-test.

In the decade since my last UPS died, I can count the number of power outages (including planned ones) on just one hand, with fingers to spare.  There's been a few momentary blips on top of that, but my computers tended to just power through those.  Battery backup just isn't a big priority under those conditions.

But eventually, a number of things conspired to change that:

* I picked up an [ISS Above][issabove], a neat little device that monitors the International Space Station.  It runs on a Raspberry Pi with a microSD card as its primary storage, and losing power while writing to SD cards is a really good way to corrupt data or lose a card.

* I purchased an expensive TV.  It's commonly said that unclean AC power can harm electronics and reduce their lifespan, and while my power has always seemed pretty clean, I figured that the ISS Above is **right there** anyway, so I may as well "UPS" them both.

* I built a home server for (among other things) handling backups of my other computers.  Backups are something you really don't want getting corrupted by power loss, especially if the corruption goes unnoticed.

* I discovered that my gaming PC's multi-SSD RAID0 setup might be prone to more data loss on cutting power than might otherwise be expected.

* I bought a CPAP machine to help me sleep properly at night, involving air through a mask.  While the device can safely handle power outages — i.e. I'm not going to suffocate if I lose power — I figured it'd be nice to be able to sleep comfortably through most short outages.

* And finally, our building was undergoing renovations and required multiple planned power outages.  Manually turning off all of the above beforehand was a pain (especially early in the morning), and I decided I would rather just be able to sleep through future outages, planned or otherwise.

So after consulting lists of UPSes supported in Linux, choosing a model of UPS, and trying it out for a week or two, I went "all in" and bought three more for a total of four.  Here's how I set them up.

## Network UPS Tools

Many UPSes offer their own software, but quality and OS support varies greatly, and most are limited to the very simple scenario where one UPS powers one computer.  The most flexible and universal option is to choose a UPS that is supported by the [Network UPS Tools (NUT)][nut] project.

You can roughly divide NUT up into three different "levels":

* The raw driver level, which talks to the UPSes directly;
* The server level (`upsd`), which processes data from the drivers and makes it available on the network; and
* The monitoring level (`upsmon`), which reads UPS data from the network and makes decisions based on it.

Why multiple levels?  So that you can treat them as building blocks and assemble them however you want.  For example, a host could monitor multiple UPSes with a single `upsd`.  And if hosts are sharing a UPS, only one of them needs to run the driver and `upsd`; the rest can just run `upsmon` to monitor that one UPS over the network.

### Simple standalone setup

If you're just hooking a single UPS up to a single computer, then most of the stuff I'm talking about here won't apply to you.  Instead, you can just follow the [same simple guide][guide] I used to get started.

If you're following that guide, the main thing to remember is that you should omit all the `ACL` and `allowfrom` configuration lines, since access control has been removed in recent NUT versions.  Use firewall rules instead, or set `LISTEN 127.0.0.1` to only listen on the loopback interface.

## My setup

I ended up buying four of the [Cyber Power CP1500PFCLCD][cp1500] UPS, a 1500 VA model with a USB management interface.  It seemed like a nice mix of power and features, and it outputs a real sine wave, which avoids any possible issues with certain computer power supplies or medical equipment.

Once I had all four, I set them up as follows:

* One to power the server (`janus`), its external hard drives, and the networking equipment around it (including the internet modem);
* One to power my gaming PC (`omgwtfhax`), its monitor, and its sound system (so I'm not blind or deaf on power loss);
* One (`tv`) to power the TV, the ISS Above (`issabove`), my gaming consoles, and the network switch in that area;
* One (`cpap`) to power my CPAP — and my wireless access point as well, just due to its proximity.

Since the `janus`, `omgwtfhax`, and `cpap` UPSes were all fairly close to each other, they would all be monitored by `janus` (my Debian Linux server).  I *could* have had `omgwtfhax` monitor its own UPS, but it's turned off most of the time, and I wanted 24/7 monitoring and control.

The `tv` UPS would be managed by the ISS Above device, since I had already put the SD card in another computer and given myself SSH access to it.  It turns out it just runs Raspbian — Debian for Raspberry Pi — so the process was mostly identical.  Also, I could power the Pi using one of the USB ports on the front of the UPS, avoiding any "DC to AC to DC" inefficiency.

### Distinguishing identical UPSes

Very quickly, I ran into a major problem: My UPS uses the `usbhid-ups` driver — a sort of generic driver for most UPSes using a USB interface — and it needs to be able to tell which UPS is which via one of the following means:

* USB `vendor:product` hex identifiers or names
* Serial number (as reported by the UPS)
* USB bus number

Note specifically that "USB port number" is **not** on this list.  Since my UPSes were all the identical product from the same vendor, all unhelpfully reported their serial numbers as `000000000000`, and were all on the same USB bus, this was a pretty big road-blocker.

Thankfully, one of my fellow Hangops community members pointed me to a supplier of [dual-][dualbus] and [quad-bus][quadbus] USB cards, and the Linux driver for these cards successfully recognises them as separate buses.

So I could now identify each UPS based on which port (and thus, bus) I plugged it into — not 100% ideal, but workable.  Without this, I would've probably had to resort to buying another Raspberry Pi or two, which would have increased the cost and complexity.

If you plan to connect multiple UPSes to a single computer, keep this in mind — you'll want to either buy different models, ensure the serial numbers are set correctly, or ensure your Linux system has enough buses (of the correct USB version) to plug each in separately.

## Installing NUT

On Debian (and Raspbian), `sudo apt-get install nut` will install both `nut-server` (the monitoring servers) and `nut-client` (the clients for querying those servers).

I also added `--no-install-recommends` because some of the recommended packages were of questionable use, but that's up to you.

### On Windows

There's a Windows package for NUT available on their site, but it has some issues.  Most notably, there are several DLLs in `bin` that are not in `sbin`.  If you have any trouble getting it to start, copy all DLL files into `sbin` and try again.

## Configuring NUT

Once installed, you'll end up with a bunch of configuration files in `/etc/nut`.  Several of them are going to contain passwords, so they're all set to only be readable by the `root` user and the `nut` group.

### nut.conf

By default, NUT won't start at all until you tell it what mode to run in.  This is done via the `nut.conf` file.

On both `janus` and `issabove`, I set `MODE=netserver`, since they would both be monitoring their own UPS and exposing its details to the network.  (There actually doesn't seem to be any functional difference between `netserver` and `standalone` these days.)

On `omgwtfhax`, I set `MODE=netclient`.  It doesn't have any UPSes directly attached; instead, it would contact `janus` to monitor the UPS powering it.

### ups.conf

The `ups.conf` file is used to configure the physical links to the UPSes, and is thus used only on servers that are in `standalone` or `netserver` mode.

In my case, all my UPSes use the `usbhid-ups` driver, and all have a vendor ID of `0764` to distinguish them from other USB devices.  I could use the product ID as well, but there's no real need, since I don't own any other Cyber Power hardware.

On `janus`, I list all three connected UPSes, and the buses they're attached to:

    [cpap]
	    driver = usbhid-ups
	    vendorid = 0764
	    port = auto
	    bus = 001

    [omgwtfhax]
	    driver = usbhid-ups
	    vendorid = 0764
	    port = auto
	    bus = 003

    [janus]
	    driver = usbhid-ups
	    vendorid = 0764
	    port = auto
	    bus = 005

You can find the bus numbers using `lsusb`.  In my case:

    % lsusb | egrep 'root hub|Cyber Power' | sort
    Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 001 Device 003: ID 0764:0501 Cyber Power System, Inc. CP1500 AVR UPS
    Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
    Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 003 Device 002: ID 0764:0501 Cyber Power System, Inc. CP1500 AVR UPS
    Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
    Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 005 Device 002: ID 0764:0501 Cyber Power System, Inc. CP1500 AVR UPS
    Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
    Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
    Bus 009 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 010 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Note how you actually see two bus entries for each bus, one each for USB versions 2.0 and 3.0.  So buses 001 and 002 are my motherboard, while buses 003 through 010 are my 4-bus USB card.  (I've got room to add two more UPSes if I ever need them.)

The situation on `issabove` is much simpler, since there's only one UPS:

    [tv]
	    driver = usbhid-ups
	    vendorid = 0764
	    port = auto

With no bus specified, NUT will just search all buses for the matching device.

# upsd.conf

The behaviour of the `upsd` server is configured using `upsd.conf`.  This daemon only runs in `standalone` or `netserver` modes.

There are a few options you can set here, but in most cases, there's only really one that you need to tweak: The `LISTEN` option.  This defines what IP address `upsd` will listen on — and thus, whether it's exposed to the network, or local only.

If nobody else needs access, you can just use `LISTEN 127.0.0.1` to limit it to local access only.  But both `janus` and `issabove` need to expose their servers to the network, so I use `LISTEN 0.0.0.0` to listen on all interfaces.  Be sure to use the appropriate firewall rules to make sure this is secure — it uses TCP prt 3493.

# upsd.users

Anyone who can access `upsd` via TCP can do read-only queries to get the status of the UPS.  To do anything more, however, they're going to need a user account.  These are defined in `upsd.users`.

At the very minimum, you're going to need a user account for `upsmon` to use, whether it's local or connectng from another system.  It's not a bad idea to create separate users for each `upsmon` that will be accessing your `upsd`.

You may also want to create a generic administrator account that you can use to tweak things by hand.  You can give it broad access, or you can limit it to the commands you know you'll be using.

Finally, depending on what you plan on doing with your `upsd`, you may choose to create additional accounts to manage specific aspects — to run periodic tests, for example.

On `janus`, my `upsd.users` file looks like this (with passwords changed);

    [local]
	    password = long-random-string
	    upsmon master

    [omgwtfhax]
	    password = long-random-string-2
	    upsmon slave

    [wisq]
	    password = personal-password
	    actions = SET
	    instcmds = ALL

    [beeper]
	    password = beeper
	    instcmds = beeper.enable
	    instcmds = beeper.disable

Here I've created two `upsmon` accounts: One that I'll use for local monitoring, and one that `omgwtfhax` will access remotely.  These can just have long random passwords, since I'll never have to enter them personally.

I've also created a generic admin account, `wisq`, to let me tweak settings ad hoc.  This is certainly the most "dangerous" account, and it should have a good password, since it can set anything — although I'm not sure how much damage an attacker could really do, beyond just turning everything off.  

Finally, I have a `beeper` account just for managing the beeper.  Yes, that's actually the real password — security doesn't seem too important here, since the most anyone could really do with this account would be to spam and annoy me.

The configuration on `issabove` is mostly identical, except that it lacks an entry for `omgwtfhax`, and the `local` password is different.

[nut]: http://networkupstools.org/
[issabove]: http://www.issabove.com/
[cp1500]: https://www.cyberpowersystems.com/product/ups/cp1500pfclcd/
[dualbus]: https://www.1394store.com/eshop/product.asp?dept_id=74&pf_id=1240
[quadbus]: https://www.1394store.com/eshop/product.asp?dept_id=74&pf_id=1241
[guide]: https://blog.shadypixel.com/monitoring-a-ups-with-nut-on-debian-or-ubuntu-linux/
