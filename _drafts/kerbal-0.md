---
layout:     post
title:      "Kerbal Space Program: Introduction"
subtitle:   "Tips and core concepts to get you started"
#date:       2014-12-18 10:00:00 EST
author:     "Wisq"
header-img: "img/home-bg.jpg"
---

From where I'm standing, things are looking pretty good for space exploration.  Major missions are reaching completion, new ones are being launched, NASA got *more* funding than they asked for, and public interest is at a level I don't remember since my childhood back in the 1980s.

I'd like to think that *Kerbal Space Program* (or "KSP" for short) had some small role in that last bit.

Set in a miniature solar system with the proverbial "little green men" as your titular space-faring protagonists, it challenges you to establish a full-fledged space program, starting from nothing more than a single-occupant pod strapped to a rocket engine and going "up" from there.  Along the way, you get to learn about rockets, about orbits and burns, about the kinds of challenges facing a space program and spaceflight, and about the beauty and vastness of outer space itself.

KSP just released version 0.90, their first "scope complete" beta version.  They'll still be adding features, but they've established the basic gameplay framework needed for the final game.  Regardless, it's been eminently playable for years, and gained quite a bit of popularity over the past year since they added a proper progression system.

In my opinion, KSP is well worth the regular asking price, but right now you can [grab it for 25% off at Steam][KSP-steam] until the new year.

In this series of posts, I'll go over some of the core concepts of KSP, then introduce some of the community-made game mods I currently use and recommend.  After that, I hope to post a longer series documenting a modded playthrough.

## Getting Started

To get started in *Kerbal Space Program*, I recommend you just launch it and go straight to "Start Game" and "Training".  The lessons there will show you how to build ships, how to fly and stage them, and how to plan and execute orbital manoeuvres.

Once you've done these, you're ready to move on to the core game.

### Game Modes

KSP offers three modes of gameplay: Sandbox, Science, and Career.

In Sandbox mode, every part is available to you from the beginning, and there are no goals — or more specifically, you set your own goals.  I generally use this to test out mods, but it can also be useful for beginners to get a feel for building rockets and getting them into orbit.  However, the sheer number of parts can be a bit overwhelming to a new player, so you might be better off in another mode.

In Career mode, you start with a limited number of parts and need to work your way up to more, by researching them.  You also need to pay money for every ship you launch.  To help you, there are contracts that give you Funds (so you can launch more things), Science (so you can launch *better* things), and Reputation (so you can do better contracts and get more Funds and Science).

Science mode is just Career mode without the money, reputation, or contracts.  The absence of Funds can make it easier than Career mode in some ways, but the lack of contracts means you have no "renewable" way to get more Science — if you've researched everything nearby, you have to go further out to progress, and that can be hard if you've made the wrong research choices.  I don't recommend it for beginners because of this.

In all these modes, you'll start out looking down at your Kerbal Space Centre.  Key buildings here are the *Vehicle Assembly Building* (VAB), where you build rockets; the *Spaceplane Hangar* (SPH), where you build planes; and the *Tracking Station*, where you monitor missions in progress (and other things like asteroids).

In Career mode, you'll also have access to *Mission Control*, where you manage contracts.  **Go here first!**  There are a bunch of missions relating to your first few flights, and if you skip these, you'll lose out on some early Funds and Reputation.

In Career and Science modes, you'll have access to *Research & Development*, where you can spend Science to research new technologies, and (on harder difficulties) spend Funds to unlock specific parts you've researched.

### Outsourced R&D

Finally, there's one building that deserves a special mention.  Available only in Career mode, the *Administration Facility* lets you enact *Strategies* that affect how your space program operates.

The reason I'm singling this out is that there's one Strategy that can make or break your Career game progression: *Outsourced R&D*.  Basically, this takes a percentage of your funds income and converts it into Science instead.  As with most Strategies, it gets more efficient the more you convert, starting at 1 Science per ~35 Funds and improving from there.

So, what's the big deal?  Well, in my opinion (and many other players), they severely undervalued Science points.  Most contracts supply you with many thousands of Funds, even some of the simple "test this part" contracts.  That converts into hundreds or thousands of Science, which is enough to speed you through the entire tech tree with minimal effort.

Whether you take advantage of this or not is completely up to you.  If you enjoy the stock Science balance, then avoid this Strategy like the plague.  If you want a faster progression, or find yourself stuck with no Science to progress, maybe enact it at a small percentage (5% or 10%) and go from there.  And if you just want to breeze through the tech tree, go ahead and bump this up to 30% or even 50%.

Whatever you choose, it pays to be informed — I've seen players complain that their progression was ruined by this (and "ruined" one game myself using 50%), while other players appreciate the ability to choose their own game balance.

### Reverting & Loading

When you're learning the game, don't be afraid to use the "revert" feature when a launch goes wrong, or to save before  doing something tricky and load if it fails.

A lot of more experienced players (including myself) will play "ironman", i.e. without reverts or loads under most circumstances.  We do this for the sake of making every launch tense and exciting, but that's only because we've done so many launches that they've become easy and routine.

If you try this as a new player, you'll rapidly run out of career funds and find yourself grinding boring missions to get enough to launch again.  So just say yes to reverts!

## Core Concepts

Once you've got a feel for flying rockets around and want to understand what's actually going on, it's good to establish some core concepts.  After all, this is rocket science we're talking about!

**Velocity** (v) is your speed.  It's measured in metres per second (m/s).  However, there's no one "true" velocity in space, so you always measure velocity compared to something else.  In KSP, you measure it either *surface velocity* (how fast you're moving over land), *orbital velocity* (how fast you're moving around something), or *target velocity* (compared to your selected target's velocity).

It's worth noting that even if you have zero surface velocity, you still have some orbital velocity, because the surface is spinning — this is why it's easiest to launch into a west-to-east orbit (out towards the water), because you get some orbital velocity for free!

**Acceleration** is your change in velocity over time.  It's measured in metres per second per second (m/s&sup2;), which is to say, how much your velocity will change (in m/s) every second.  So if your velocity is 0 m/s, and you accelerate at 10 m/s&sup2; for three seconds, you'll now be travelling at 30 m/s.

**Thrust** is the actual force exerted by an engine.  In KSP, it's measured in kilonewtons (kN).  One kilonewton is enough to accelerate one tonne of ship (total mass, including fuel) at a rate of 1 m/s&sup2;.

To get the acceleration of your ship, add up the thrust of all active engines, then divide that by the total mass of your ship (including fuel).  Note that as you burn fuel, your total ship mass decreases, while your engines continue to produce the same amount of thrust.  The result is that your ship will accelerate faster and faster, peaking at the very instant that it runs out of fuel.

**Specific impulse** (<i>I</i><sub>sp</sub>) is a way to measure a rocket's efficiency, or how much total change in velocity you get for a particular fuel-to-mass ratio.  It's listed as seconds, which is the amount of time the engine could hover against Earth's gravity for a given amount of fuel.

**Delta-v** (&Delta;v) is the total effort needed to get from one trajectory to another.  It's measured in m/s, same as velocity, since it's just the difference between your target velocity and your current velocity.  To perform an orbital manoeuvre, or to get into orbit in the first place, you need a certain amount of delta-v.

A rocket's delta-v is partly a function of its "wet" (fueled) mass versus "dry" (empty) mass.  The key here is that delta-v is independent of actual mass — if you scaled a rocket up or down, fuel and all, it would actually have the exact same delta-v, since it would have the same wet-to-dry ratio.  (The difference is, if you add a few tonnes of payload, the bigger rocket will lose a lot less delta-v than the smaller rocket, since it's more massive and the payload has less of an impact on the wet-to-dry ratio.)

There's a formula to calculate your ship's total delta-v based on your engine's <i>I</i><sub>sp</sub> and your ship's wet versus dry mass.  If you're interested, check out the [Advanced Rocket Design][adv-rocket] tutorial on the KSP Wiki.  Personally, I use mods that show me my total delta-v as I build, since it's a bit silly to have to constantly recalculate it by hand.

### Staging

Most rockets are split into *stages*, separated by *decouplers*.  The bottom stages are big and heavy, while the top stages get progressively smaller and lighter.  As the lower stages run out of fuel, they're detached and discarded, and the (now smaller) rocket lights up the next engine and continues its ascent.

So why *do* we build rockets in multiple stages?  Two reasons.

The obvious reason is to reduce dead weight (i.e. dry mass).  Rocket fuel tanks are heavy even when they no longer contain any rocket fuel.  If you have a series of tanks and you dispose of them as you go, you're reducing your dry mass, and thus improving your wet-to-dry ratio and your delta-v, allowing you to make more maneuvers (or bigger ones).

The less obvious reason is that you generally want different sorts of engines for when you're taking off versus when you're in space.

During takeoff, thrust is critical: You need to overcome the basic 9.8 m/s&sup2; of downward force produced by gravity, and you need to achieve orbital speed as quickly as possible so that you're "free" from gravity  — or specifically, from its detrimental tendency to crash you into the ground.

However, once you're in orbit, thrust is no longer a major concern — plus you're a lot less massive, so you want an efficient, low-thrust, *low-mass* engine instead.  In particular, your engine is now a major part of your remaining mass — the lighter the engine, the higher your remaining delta-v.

The disadvantage of staging is that you're carrying extra mass for engines that aren't contributing at a given moment.  But the savings from staging are so great that this is a very minor concern.

### Orbiting

We tend to talk about space being "zero gravity" or "microgravity", but the reality is that astronauts in low earth orbit experience almost as much gravity as we do on the surface.  So why are things "weightless" in space?

In Douglas Adams' *The Hitchhiker's Guide to the Galaxy* series, he describes the secret to flying as "learning how to throw yourself at the ground and miss".  In fact, this is basically what happens when you orbit.  While in orbit, you have such a huge sideways velocity that, rather than falling back to the surface, you actually *miss* the planet and go *around* it instead.  (Adams was likely referring to this when he wrote his books, even if he used it much more literally for comic effect.)

The result is that you spin around the planet like a ball on a rope.  But in this case, the rope is tied to you, your ship, and everything else inside it.  You're all in free-fall, so things appear "weightless" because nothing is falling any faster than anything else.  You still very much experience gravity — after all, if it wasn't for gravity, you would go flying off into deep space!

When in orbit, a lot of our common notions about how to get places go out the window.  For example, getting to the Mun is *not* a case of aiming at it and firing your engines, and getting back down to Kerbin does *not* involve aiming downwards.  Rather, all space manoeuvres are about altering your orbit until it gets you to the desired place at the desired time.

Most of the important stuff is covered by the *Orbiting 101* training scenario within KSP.  Here's a basic recap of the terminology:

**Prograde** refers to your current direction of travel, while **retrograde** refers to the opposite of that.  "Burning prograde" (firing your engines while facing prograde) expands the opposite side of your orbit; burning retrograde shrinks it.

**Normal** and **anti-normal** refer to up and down when looking at your orbit from the side in a profile view.  Burning in these directions changes the inclination of your orbit, making one side higher than the other.  The most efficient inclination-changing burns are when you're crossing the equator.

**Radial in** points towards the object you're orbiting, while **radial out** points away from it.  You generally don't burn in these directions because it's not very efficient, but there are times when it's useful.

**Apoapsis** is the point when you're furthest away from the body you're orbiting, while **periapsis** is the point when you're closest.  You may have heard these as "apogee" and "perigee"; these are the exact same things, except they refer specifically to Earth.

To decrease your periapsis (e.g. to return to Kerbin), burn retrograde when you reach your apoapsis.  Your peripasis will shrink, and once it's inside Kerbin's atmosphere, you can let atmospheric braking do the rest.

Similarly, to head further out, you would wait until your periapsis and burn prograde.  If you do this long enough, your apoapsis will escape Kerbin's gravity altogether and you'll be in interplanetary space.

Burning retrograde at your periapsis, or prograde at your apoapsis, will make your orbit more circular by decreasing your apoapsis / increasing your periapsis, respectively.  The closer these are to each other, the more circular your orbit.  Of course, if you do this enough, the two will swap places.

## Modding

Although KSP is a great game on its own, there's also an excellent modding community that can make the experience all that much more exciting and fulfilling.  In my next post, I'll talk about modding KSP and start detailing some of my favourite mods.  Stay tuned!


[KSP-steam]: http://store.steampowered.com/app/220200/ "Kerbal Space Program on Steam"
[adv-rocket]: http://wiki.kerbalspaceprogram.com/wiki/Tutorial:Advanced_Rocket_Design
