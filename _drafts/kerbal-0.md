---
layout:     post
title:      "Kerbal Space Program: Introduction"
subtitle:   "Core concepts to get you started"
#date:       2014-12-18 10:00:00 EST
author:     "Wisq"
header-img: "img/home-bg.jpg"
---

From where I'm standing, things are looking pretty good for space exploration.  Major missions are reaching completion, new ones are being launched, NASA got *more* funding than they asked for, and public interest is at a level I don't remember since my childhood back in the 1980s.

I'd like to think that *Kerbal Space Program* (or "KSP" for short) had some role in that last point.  Set in a miniature solar system with the proverbial "little green men" as your titular would-be space-faring protagonists, it challenges you to establish a full-fledged space program, starting from nothing more than a one-kerbal pod strapped to a rocket engine and going "up" from there.

Along the way, you get to learn about rockets, about orbits and burns, about the kinds of challenges facing a space program, and about the beauty and vastness of outer space.  It's well worth it even at regular price, and even in its current Early Access state (they're doing the final beta and getting ready for release) — but right now you can [grab it for 25% off at Steam] until the new year.

In this series of posts, I'll quickly introduce some key concepts you'll need to get into and around in outer space.  I'll then move onto some mods I enjoy for expanding or improving the Kerbal experience.  And finally, I hope to produce a series of posts documenting my adventure in starting a new Kerbal Space Program from scratch.  Read on and stay tuned!

## Getting Started

To get started in *Kerbal Space Program*, I recommend you just launch it and go straight to "Start Game" and "Training".  The lessons there will show you how to build ships, how to fly and stage them, and how to plan and execute orbital manoeuvres.

Once you've done these, you're ready to move on to the core game.

### Game Modes

KSP offers three modes of gameplay: Sandbox, science, and career.

In Sandbox mode, every part is available to you from the beginning, and there are no goals — or more specifically, you set your own goals.  I generally use this to test out mods, but it can also be used by beginners to get a feel for building rockets and getting them into orbit.  However, the sheer number of parts can be a bit overwhelming to a new player, so you might be better off in a different mode.

In Career mode, you start with a limited number of parts and need to work your way up to more, by researching them.  You also need to pay money for every ship you launch.  To help you, there are contracts that give you Funds (so you can launch more things), Science (so you can launch *better* things), and Reputation (so you can do better contracts and get more Funds and Science).

Science mode is just Career mode without the money, reputation, or contracts.  The absence of Funds can make it easier than Career mode in some ways, but the lack of contracts means you have no "renewable" way to get more Science — if you've researched everything nearby, you have to go further out to progress, and that can be hard if you've made the wrong research choices.  I don't recommend it for beginners because of this.

In all these modes, you'll start out looking down at your Kerbal Space Centre.  Key buildings here are the *Vehicle Assembly Building* (VAB), where you build rockets; the *Spaceplane Hangar* (SPH), where you build planes; and the *Tracking Station*, where you monitor missions in progress (and other things like asteroids).

In Career mode, you'll also have access to *Mission Control*, where you manage contracts.  **Go here first!**  There are a bunch of missions relating to your first few flights, and if you skip these, you'll lose out on some early Funds and Reputation.

In Career and Science modes, you'll have access to *Research & Development*, where you can spend Science to research new technologies, and (on harder difficulties) spend Funds to unlock specific parts you've researched.

### The Administration Facility

Finally, there's one building that deserves a special mention.  Available only in Career mode, the *Administration Facility* lets you enact *Strategies* that affect how your space program operates.

The reason I'm singling this out is that there's one Strategy that can make or break your Career game progression: *Outsourced R&D*.  Basically, this takes a percentage of your funds income and converts it into Science instead.  As with most Strategies, it gets more efficient the more you convert, starting at 1 Science per ~35 Funds and improving from there.

So, what's the big deal?  Well, in my opinion (and many other players), they severely undervalued Science points.  Most contracts supply you with many thousands of Funds, even the simplest "test this part" contracts.  That converts into hundreds or thousands of Science, which is enough to speed you through the entire tech tree with minimal effort.

Whether you take advantage of this or not is completely up to you.  If you enjoy the stock Science balance, then avoid this Strategy like the plague.  If you want a faster progression, or find yourself stuck with no Science to progress, maybe enact it at a small percentage (5% or 10%) and go from there.  And if you just want to breeze through the tech tree, go ahead and bump this up to 30% or higher.

Whatever you choose, it pays to be informed — I've seen players complain that their progression was ruined by this (and "ruined" one game myself), while other players appreciate the ability to choose their own game balance.

## Core Concepts

Once you've got a feel for flying rockets around and want to understand what's actually going on, it's good to establish some core concepts.  After all, this is rocket science we're talking about!

**Velocity** (v) is your speed.  It's measured in metres per second (m/s).  However, there's no one "true" velocity in space, so you always measure velocity compared to something else.  In KSP, you measure it either *surface velocity* (how fast you're moving over land), *orbital velocity* (how fast you're moving around something), or *relative velocity* (compared to your selected target's velocity).

It's worth noting that even if you have zero surface velocity, you still have some orbital velocity, because the surface is spinning — this is why it's easiest to launch into a west-to-east orbit, because you get some orbital velocity for free.

**Acceleration** is your change in velocity over time.  It's measured in metres per second per second (m/s&sup2;), which is to say, how much your velocity will change every second.  So if you're standing still (relative to a reference point) and you accelerate at 10 m/s&sup2; for two seconds in a given direction, you'll now be travelling at 20 m/s in that direction (relative to your reference point).

**Thrust** is the actual force exerted by an engine.  In KSP, it's measured in kilonewtons (kN).  One kilonewton is enough to accelerate one tonne of ship (total mass, including fuel) at a rate of one m/s&sup2;.  So to get the acceleration of your ship, you divide the total thrust of all active engines by the mass of your ship, and that's how fast you can change your velocity.  (Remember that Kerbin gravity is 9.8 m/s&sup2;, same as Earth, so you need at least that much thrust to take off!)

It's important to remember that as you burn fuel, your total ship mass decreases, while your engines continue to produce the same amount of thrust.  The result is that your ship will accelerate faster and faster, peaking at the very instant that it runs out of fuel.

**Delta-v** (&Delta;v) is the total effort needed to get from one trajectory to another.  It's measured in m/s, same as velocity, since it's just the difference between your target velocity and your current velocity.  To perform an orbital manoeuvre, or to get into orbit in the first place, you need a certain amount of delta-v.

A rocket's delta-v is partly a function of its "wet" (fueled) mass versus "dry" (empty) mass.  The key here is that delta-v is independent of actual mass — if you scaled a rocket up or down, it would actually have the exact same delta-v, since it would have the same wet-to-dry ratio.  (The difference is, if you add a few tonnes of payload, the bigger rocket will lose a lot less delta-v than the smaller rocket, since it's more massive and the payload has less of an impact on the wet-to-dry ratio.)

**Specific impulse** (<i>I</i><sub>sp</sub>) is a way to measure a rocket's efficiency, or how much delta-v you get for a particular fuel-to-mass ratio.  It's listed as seconds, which is the amount of time the engine could hover against Earth's gravity for a given amount of fuel.

### Orbiting

We tend to talk about space being "zero gravity" or "microgravity", but the reality is that astronauts in low earth orbit experience almost as much gravity as we do on the surface.  So why are things "weightless" in space?

In Douglas Adams' *The Hitchhiker's Guide to the Galaxy* series, he describes the secret to flying as "learning how to throw yourself at the ground and miss".  In fact, this is basically what happens when you orbit.  While in orbit, you have such a huge sideways velocity that, rather than falling back to the surface, you actually *miss* the planet and go *around* it instead.  (In fact, Adams was likely referring to this when he wrote that, even if he used it much more literally for comic effect.)

The result is that you spin around the planet like a ball on a rope.  But in this case, the rope is tied to you, your ship, and everything else inside it.  You're all in free-fall, so things appear "weightless" because nothing is falling any faster than anything else.  You still very much experience gravity — after all, if it wasn't for gravity, you would go flying off into deep space!




### Staging

Most rockets are split into *stages*, separated by *decouplers*.  The bottom stages are big and heavy, while the top stages get progressively smaller and lighter.  As the lower stages run out of fuel, they're detached and discarded, and the (now smaller) rocket lights up the next engine and continues its ascent.

So why *do* we build rockets in multiple stages?  Two reasons.

The obvious reason is to reduce dead weight (i.e. dry mass).  Rocket fuel tanks are heavy even when they no longer contain any rocket fuel.  If you have a series of tanks and you dispose of them as you go, you're reducing your dry mass, and thus improving your wet-to-dry ratio and your delta-v, allowing you to make more maneuvers (or bigger ones).

The less obvious reason is that you generally want different sorts of engines for when you're taking off versus when you're in orbit.  During takeoff, thrust is critical: You need to overcome the basic 9.8 m/s&sup2; of downward force produced by gravity, and you need to achieve orbital speed as quickly as possible so that you're "free" from gravity  — or specifically, from its detrimental tendency to crash you into the ground.

However, once you're in orbit, thrust is no longer a major concern, and you can afford to take your time and do things more efficiently.  For this, you want an efficient, low-thrust, low-mass engine instead.  In particular, using a lighter engine can dramatically improve your delta-v, because engines are a major contributor to dry mass, and you want as little dry mass as possible compared to your fuel mass.





## Modding

Like *Minecraft*, KSP is a full-fledged game, and newcomers would be well advised to play it "vanilla" (unmodded) until they've got the hang of it.  But also like *Minecraft*, the vibrant modding community is where it really starts to shine.  For those wanting more content, or maybe more realism and challenge, there are countless mods available out there to improve and customise your KSP experience.

## Managing Mods

## Realism

For most games, I'm of the opinion that adding realism is generally a good thing so long as it doesn't actively harm gameplay.  Reality is complex and interesting, and adding realism usually creates some equally interesting interactions that the game designers didn't forsee.  At the very least, it lets players better reason about how things will work, and tends to reward player creativity.

In KSP, there's another reason to add realism: *Education!*  A lot of us enjoy playing KSP because we get to learn how space works, and using realism-enhancing mods (or even just researching what they do) can take that to the next level.


So now that we're armed with some basic concepts, let's see how the various realism mods interact with these.

### FAR

First and foremost on the realism list is [Ferram Aerospace][FAR], or "FAR".  This is a complete remodelling of planetary atmospheres and flying within them.

The stock Kerbal aerodynamic model is exceedingly primitive — parts all contribute a certain amount of atmospheric drag, regardless of position or orientation.  A tall, slender rocket is no more aerodynamic than taking all the same parts and laying them flat to form a "pancake" ship, and using nosecones to make your ship sleeker actually *adds* to drag!

FAR fixes all this.  Your ship's shape actually matters, and non-aerodynamic bits will cause trouble very quickly.  It's quite daunting at first, and not for the beginner — your first rockets will probably flip and break up, and your first planes likely won't make it off the runway.  But once you start paying attention to things like centre of mass versus centre of lift, or where you put the control surfaces and tailfins on your rockets, things start to work again.

FAR also offers diagnostic tools that help you understand what's going on with your plane, both during construction and in flight.  The pre-flight simulators give you an idea as to whether your plane is stable or not, and the in-flight readouts let you fine-tune your flight parameters to achieve or avoid certain outcomes.  In particular, you'll want to know what ["max Q"][maxQ] is, and you'll feel relieved every time you pass it uneventfully.

Learning to use FAR is a bit of an investment, but it pays off when you look back at your ship designs and realise that they all look and fly like real rockets.  There's certainly some appeal to using the Kerbal sandbox to make weird "pancake" or even ["asparagus"][asparagus] rocket designs, but for those who want to feel like they're doing rocket science, FAR is an important addition.

### KIDS

FAR does have one downside: It actually becomes *too easy* to get into space.  Once you get over the hurdle of making rockets that don't break up on launch, you may notice that you need about a quarter less delta-v to make it into orbit as you do in stock KSP.

The reason?  Because stock Kerbal engines are actually too powerful!

The KSP developers made the stock Kerbal atmosphere more like soup than air, and so in order to make rockets still work effectively, they had to bump all the engine powers up to balance things out.  Since FAR aims for realism, not necessarily for balance, it also ends up revealing how overpowered stock engines really are.

To solve this, the [Kerbal Isp Difficulty Scaler][KIDS] mod (KIDS, by the same author as FAR) offers a way to blanket-reduce all engine efficiency by an equivalent amount, returning balance to the universe and restoring the original difficulty (with FAR's atmospheric flight considerations on top of that).

For the realism-inclined, KIDS also offers the ability to make specific impulse affect thrust rather than fuel consumption.  You may have noticed that most Kerbal engines are rated as less efficient (lower <i>I</i><sub>sp</sub>) in the atmosphere versus in space, but what they don't tell you is *why*.  The answer is that rocket efficiency depends on the difference between pressure inside versus pressure outside, and so a rocket becomes less efficient when there's atmospheric pressure outside.

While Kerbal may model this inefficiency, they don't model it *correctly.*  In stock KSP, your engines always produce the same amount of thrust, but they just use more fuel (thus becoming less efficient) when you're in the atmosphere.  In reality, they should be using the same amount of fuel at all times, but just producing less thrust.  KIDS offers options to fix this as well.

[FAR]: http://
[maxQ]: http://
[asparagus]: http://
[KIDS]: http://
