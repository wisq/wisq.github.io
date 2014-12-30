---
layout:     post
title:      "Space Kadet: First Flight"
subtitle:   "A modded Kerbal Space Program playthrough"
#date:       2014-12-27 17:00:00 EST
author:     "Wisq"
header-img: "img/2014/12/kerbal-4.jpg"
---

*Space.  The final frontier.*

… Actually, I wouldn't be too surprised if some crazy cross-dimensional travel ends up being the *real* final frontier someday.  But right now, space is all we have.

And if we're stuck with space, then there's no better way to explore it than from the eyes of the little green critters known as Kerbals.

<span class="image-right">
![A Kerbal](/img/kadet/001/kerbal.jpg "A Kerbal.  Probably Jebediah.")
</span>

*Kerbal Space Program* just hit beta a couple of weeks ago.  It's an incremental update with just a few extra features, but it does mark the point at which they've declared it to be feature-complete.  So it seems as good a time as any to do a grand playthrough, and this seems like a good place to share that.

If you haven't read [my introduction to *Kerbal Space Program*][kerbal-1], you should probably go take a look.  The rest of the series (about modding it) is optional, but that first post contains a lot of info, concepts, and terminology that I'll be using from this point onwards.

I'll be running KSP with over 80 mods.  Many of them are the ones I've listed in my KSP modding series, but a lot of them are just minor tweaks like interface improvements, or brand new mods I haven't had a chance to get to know.

As for game settings: "Science" campaign, "Hard" difficulty (only 60% science rewards), ironman mode.  I'll have most of the [realism mods I mentioned][kerbal-2] in my modding series, including FAR, KIDS, TAC-LS, and RemoteTech (but not KCT).  KIDS is set to "FAR to stock KSP" (so my engines are only 81% as efficient) with thrust variation enabled.

There's a few reasons I'm doing Science mode instead of Career:

* Grinding contracts for funds is okay, but I've done enough of that already, and it doesn't make very exciting blogging.
* There are enough loopholes in Career mode (such as "science data from space above X") that I'm not sure funds really mean that much to begin with.
* I want to get Science the hard way: Actually going new places, not just doing contracts or using the Admin building.
* I'm doing ironman-style — no reverts, no loads, no simulations — so I'm going to have a lot of failures.  Losing a ship on launch because of design flaws or bad aerodynamics will still be a setback, but it shouldn't be a crippling blow to my funds and crew experience and require hours of grinding to recover.

So with that, let's get launching!

## Day 1

The first hurdle facing any new would-be Kerbal Mission Controller is that you don't have a lot to work with.  A simple command pod, one solid booster and one liquid engine, a small fuel tank, three Kerbonauts.  No decouplers, no probes, no jets, no science equipment.

There's a few ways to start your space program.  You can do the traditional way and just sit someone on top of a solid booster.  Technically, one might consider this risky.  Realistically, it's so simple that it's hard to get wrong.

The cheap & silly way is to grind launchpad science.  Put a command pod on the launchpad with no engine, then hop out and start doing EVA reports and surface samples.  This relies on the apparent facts that a) each section of the Kerbal Space Centre has dramatically different surface makeup that is somehow valuable to science, and b) Kerbal scientists literally don't know how to walk outside and collect a handful of dirt.  (If you want to be generous, you can say that they're "testing and refining their surface sample methods" or something.)

But I'm doing neither of these.  In the spirit of modding, we start things a little differently: with [sounding rockets][sounding].  These are the rockets that various space agencies still send up into the upper atmosphere (and sometimes briefly into outer space) to collect data and test things in microgravity.  They're also what NASA used back in 1958 to learn what they needed to perform their first human space missions.

The [Sounding Rockets mod][sounding-mod] recreates this using nosecones (containing a small probe core, battery, and parachute) and solid rockets that jettison themselves after expending their fuel — no decouplers needed.  For science, they can carry four different varieties of science package.  They're all incredibly lightweight so they can actually go pretty high, but they have zero attitude control, so they're strictly sub-orbital at best.

My "Fledgling" series of sounding rockets begins with **Fledgling 1**, a simple sounding rocket in a vertical launch:

![Fledgling 1](/img/kadet/001/fledgling_01.jpg "Fledgling 1")

The bulge near the nose is the package.  (Cue dirty jokes etc.)  It's not much to look at, and it doesn't make it anywhere near outer space — it peaks just short of 21km — but I still manage to collect some meteorological data from the high atmosphere, plus I get the bonus for my first flight.  **Fledgling 2** is the exact same thing, but engineering data.

![Fledgling 1 landed on the helipad](/img/kadet/001/helipad.jpg "GET TO THE CHOPPAH")

To my amusement, both of these land on the helipad on top of the VAB, and I even get an achievement for that.

![Fledgling 3](/img/kadet/001/fledgling_03.jpg "Fledgling 3")

At this point, I decide to try testing the limits of that parachute.  **Fledgling 3** has two modules, but the extra weight means it only makes it to 10km (not even to the high atmosphere), and it crashes down hard.  The materials science data is destroyed, but the (low atmosphere) aeronomy data survives.

Ah well, back to "tried and tested".  **Fledglings 4** and **5** are high-atmosphere aeronomy and materials science data.

![Fledgling 0](/img/kadet/001/fledgling_00.jpg "Fledgling 0")

It's at this point that I get tired of the lovely [ScienceAlert][sciencealert] mod telling me that I can collect science on the launchpad, so I create the back-numbered **Fledgling 0**, which is nothing more than four science packages and no rocket.  Launch, collect, recover, done.  (Kerbal scientists are the LAZIEST.)

![Fledgling 6](/img/kadet/001/fledgling_06.jpg "Fledgling 6")

Time to escape the atmosphere.  For **Fledgling 6**, I try a staged approach.  It's a lot closer (63km), but it's not quite enough to break out of the atmosphere (70km).  For **Fledgling 7**, I try applying a thrust limiter to have it last longer (at the cost of less thrust).  This often works in stock KSP because of the thick atmosphere (lower speed = less drag), but not with a realistic FAR atmosphere; evidently, we're not hitting terminal velocity, because we don't go any higher.

Back to the drawing board.

![Fledgling 8](/img/kadet/001/fledgling_08.jpg "Fledgling 8")

**Fledgling 8** is a new model featuring a much larger first stage.  Success!  We peak at a whopping 194km, and the parachutes safely deploy despite the high reentry speed, even if you deploy them while in space.  (They slow you down in the upper atmosphere where the air is still too thin to break them.)

As the sun begins to set over the Kerbal Space Centre, I start getting impatient with the whole "one rocket, one experiment, 3.2 science" approach.  Surely there must be a way to combine multiple packages in a single rocket?  I research radial decouplers and try various ways of mashing rockets together.  

![Fledgling 9](/img/kadet/001/fledgling_09.jpg "Fledgling 9")

**Fledgling 9** is my first attempt, but it's wrong on so many levels.  It's connected by the lowest stage, so as soon as those run out, it breaks up.  Even if I'm able to trigger the second stages simultaneously (while still attached), the violent decoupling means all the probes have slightly different trajectories, so they quickly exceed the 2km render distance from each other.  With only one active probe and the rest "on rails", they're automatically considered destroyed when they hit the lower atmosphere.

But if keeping them attached until the end is the key — and if I can only radially attach engines, and not science packages — then what about just using unfuelled engines that I never actually fire?

![Fledgling 10](/img/kadet/001/fledgling_10.jpg "Fledgling 10")

And so, after many more attempts, **Fledgling 10** is born.  One empty booster in the middle, four empty boosters around it, and then four packages and five nosecones, all riding on four (real, fuelled) double booster stacks.  It successfully rides to 100km, well into space — and even though it smashes to bits on landing, all four science packages survive.  Success!

![Fledgling 11](/img/kadet/001/fledgling_11.jpg "Fledgling 11.  We have sticks.  ULTRA HIGH TECH.")

There's only so much to learn from space above the launchpad, though, and so **Fledgling 11** is my first attempt at a tilted launch.  It only makes it about 66km, just shy of outer space, but that's still enough to collect upper data from over the water, the grasslands, the highlands, the mountains …

## Day 2

Through the rest of the night and into the morning, the next several flights are just the same thing pointed in various other directions.  The quad-module design is definitely working, and it's just a matter of going through all the biome-altitude permutations.

Along the way, I research and start using [Smart Parts][smart-parts] to provide rudimentary automation.  At first, I just use timers — blow the decouplers 15 seconds after launch, fire the boosters 2 seconds later, deploy parachutes 60 seconds after that — but in later models, I start using fuel-level and altitude sensors to make things even more robust.  Aside from choosing when to do the experiments, the entire flight is hands-free.

I'm still not breaking out of the atmosphere, though.  Time to fix that.

As I'm trying to decide whether adding an extra stage of boosters or changing the launch angle will solve my problem, I realise that there's still room for one more booster with the existing design: Right in the middle!

![Fledgling 20](/img/kadet/001/fledgling_20.jpg "Fledgling 20")

The little bit of extra "oomph" pushes **Fledgling 20** up to almost 73km.  Success!

Unfortunately, it's success in the wrong direction: I launched east, and I already have space data over the water.  A couple of westerly launches later, and I have space data for the highlands and mountains as well.

From memory, there's only three more biomes left on Kerbin: The poles, the deserts, and the badlands.  I don't know where to reliably find badlands, and the poles are way too far away, but desert is a possibility — it's far to the west, but not *too* far.  So I keep firing west and try to up my propulsion.

![Fledgling 28](/img/kadet/001/fledgling_28.jpg "Fledgling 28")

Several spectacular failures later, I make a monstrosity of a sounding rocket, with the second stage running at 30% thrust on 13 separate engines.  It still can't reach the big desert to the west, but it doesn't need to — turns out there's a small patch of desert on the west coast across from the Kerbal Space Centre, and that's good enough for our lazy scientists.

**Fledgling 29** collects that data … and reenters too sharply, tearing off the parachutes.  (Time compression may have had a hand here.)  **Fledgling 30** misses the deserts entirely — apparently our trajectory is a bit random, too.  They're not total losses, because we're able to collect some data while splashed down and waiting for recovery, but not exactly successes, either.

**Fledgling 31** finally pulls it off, and our sounding rocket project finally draws to a close.  I could try to reduce the thrust a bit and collect high altitude and low altitude data from the deserts, but honestly, I'm sick of sounding rockets.  We need some *real* missions.

## Onwards and upwards

The sun sets again, and I take a moment to look at how far we've come already.

![Tech tree](/img/kadet/001/tech.jpg)

Not bad at all.  We made almost 227 Science with the sounding rockets.  We've got probe cores, so we can safely test out new ships without risking life and limb — although there's no way we can reliably use them for real missions without a working satellite network.

But more importantly, we have solar panels, which means our astronauts won't die in space.  Even when they go behind the planet and there's no more sun, it still takes two hours after the power runs out for them to die.  A low Kerbin orbit has a period of under half an hour (or so I recall), so add a few solar panels and they'll be fine.

I've got enough for one topic at the highest tier so far (90 points).  None of them really offer things I want or need, but Electrics has the best potential to lead to more science instruments, so that's the one I pick.

I'm deliberately neglecting the shipbuilding side of the tree because I want more science instruments and I think I can work with base components okay, but I might pick up General Construction later for the struts and launching towers.  Worst case, I don't think it would take too much research to reach 2.5m "Rockomax" parts, and I know I can work fine with those to the Mun and beyond.

Time to let those lazy scientists rest.  Or whatever they do when they're not demanding surface samples from the sidewalk outside their labs.

*Coming up in the next post: Day three, and the start of actual spaceflight!*

[kerbal-1]: /2014/12/24/kerbal-1/ "Kerbal Space Program: An Introduction — Wisq.net"
[kerbal-2]: /2014/12/25/kerbal-2/ "Kerbal Space Program: Keepin' It Real — Wisq.net"
[sciencealert]: /2014/12/26/kerbal-3/#sciencealert "Kerbal Space Program: Pretty Fly (for a UI) – ScienceAlert — Wisq.net"

[sounding]: http://en.wikipedia.org/wiki/Sounding_rocket "Sounding rocket — Wikipedia"
[sounding-mod]: http://forum.kerbalspaceprogram.com/threads/102502 "Sounding Rockets! — KSP Forum"
[smart-parts]: http://forum.kerbalspaceprogram.com/threads/64227 "Smart Parts — KSP Forum"
