---
layout:     post
title:      "Space Kadet: TBD"
subtitle:   "TBD"
description: "Part five of my Space Kadet series, in which TBD"
#date:       TBD
author:     "Wisq"
header-img: "img/kadet/004/header.jpg"
tags:
- Kerbal Space Program
- Space Kadet
- playthrough
---

<span class="note">
This is the fifth post of my highly-modded Kerbal Space Program playthrough.  The first is [here][kadet-1], and the previous is [here][kadet-4].
</span>

It's been a rough couple of weeks for the Space Kadet program.  But after launching several thousand tonnes of ships — and many, many lessons learned — Space Station "Origin" is finally complete.

## Building a space station

![Origin Station (core)](/img/kadet/005/origin-1-core.jpg "Origin Station (core)")

Armed with only a very basic understanding of the MKS/OKS life support loop from their wiki, I designed this simple station core.  At the core were the three modules needed for a basic life support system (plus a science lab), and the habitat rings and greenhouses would sit symmetrically around them.

The idea was that the habitat rings would counter-rotate (I added some Infernal Robotics rotating docking washers) and thus cancel out each other's torque — but just in case they didn't, they would be perpendicular to the long axis and would hopefully not cause the station to rotate very much.

Of course, there was no way I was going to get something this heavy and weirdly-shaped into orbit all in one piece.  Since the aeroponics wings formed the longer of the two axes, I broke those off and transported it in three separate trips.  (You can see the docking ports where I plan to reattach them in the diagram above.)

But of course, like any new heavy construction project, the hard part is getting it into orbit.

[Sky Krane representative]

Most of the **Sky Krane** series of ships looked something like this.  As per traditional rocket design, they started out narrow at the top — keeping in mind that "narrow" is still two and a half metres across for most space station components — and then flared out for a wider base, this time using a quad-coupler.

We ended up launching a total of 19 Sky Kranes, and almost every one taught us something new:

**Sky Krane 2** pointed out an interesting side effect of fairings — if anchored at both the top and bottom, they can provide significant structural stability.  When they auto-blow at 75km, the ship turned into a giant Space Slinky and became essentially uncontrollable.  It was bending nearly 180º and almost hitting itself!

**Sky Krane 5** taught us that you can do a 360º backflip over the launchpad and still successfully make it into orbit and deploy the first section of your new space station.

**Sky Kranes 6** and **7** demonstrated that aerodynamic issues can actually get worse as your ship gets lighter.  At the minimum, your ship must have at least one of high density, good aerodynamics, or a low thrust-to-weight ratio.

**Sky Krane 8**'s long and costly inclination burn is a reminder that we should've checked our inclination before dropping off the first base component (it was an annoying 6º inclination) — and, failing that, that launching into an inclined orbit is much more efficient if you carefully time and aim the launch.

**Sky Krane 10** reminded us how dangerous high-speed atmospheric aborts can be.  We lost our heat shield and one of the command pod's solar panels, but everyone survived.

**Sky Krane 11** again showed off with a 360º backflip, but it also demonstrated the pitfall of waiting until we reach the station to discard our stages and fairings.  There's now a huge debris field on the same orbit as Origin Station, and due to a misclick, we ended up rendezvousing with a discarded fairing rather than the station.  Thankfully, we had the fuel (and life support time) to readjust and meet the station.

**Sky Krane 12** found a new use for the Mk2 Lander Can — if you attach a large docking port to the top, it becomes a very effective heavy station pusher.  We used it to correct the station's inclination burn, getting it to a perfect equatorial orbit.

**Sky Kranes 13** and **14** finally show us that you can only push an unstable ship design so far before it's time for a rethink.  We're trying to move solar panel arrays, but they're far too light, and the ship doesn't have enough inertia to overcome the aerodynamic forces.

Time for a rethink.

![Sky Krane 15](/img/kadet/005/sky-krane-15.jpg "Sky Krane 15")

**Sky Krane 15** demonstrates the old adage, "the solution to any KSP problem is to add more struts."  Multiple stacks heavily strutted together are a wonderfully stable solution, even if it's a bit tricky to swap out the payload.

![Mega Lifter 1](/img/kadet/005/mega-lifter-1.jpg "Mega Lifter 1")

**Mega Lifter 1** shows off the value of the Hangar mod's "Multipurpose Resource Tank" — basically a giant tank that you can edit and subdivide at will.  Weighing in at a total of 2147 tonnes, it allows us to get 117 tonnes of "RocketParts" to the station — enough to build 117 tonnes of ships — but due to the reconfigurability of the tank, it can potentially serve as a template for getting many different kinds of resources into orbit.  

The launch feels like it's in slow motion.  I'm used to operating at much higher TWRs and speeds, and this sort of launch barely feels like we're going anywhere at all.  But it seems like larger weights and lower TWRs really are the key to safe launches, because brave pilot Genelas makes it into orbit with no problems at all.  We manage to dock with over 90% of our monopropellant remaining, despite our huge mass and ridiculous number of RCS thrusters.

![Sky Krane 17](/img/kadet/005/sky-krane-17.jpg "Sky Krane 17")

**Sky Krane 17** is our first use of the [Deployable Emergency Reentry Pod][DERP] (DERP), basically a lifeboat with its own propulsion and parachute, and easy evacuation via a hotkey.  The ship is stable and we never need it, though, so I still don't have any hands-on experience with it.

Getting this to the station means we now have an orbital shipyard and can build ships.  But before we can get the various workshops running (including all the life support), we still need some actual machinery, since they ship empty by default.

[Sky Krane 18]

**Sky Krane 18** marks a return to the old design, demonstrating that it could be quite stable if you have only a few heavy components (and add some struts just in case).  It also redefines "dense," as that one little barrel contains 16 tonnes of machinery and 16 tonnes of spare parts — no wonder they don't come stocked by default!

Those extra 1.25m docking ports on the side pay off when we later use one of them to attach a container to hold our compost and biomass — even if they're temporary intermediate products in the life support cycle, you still need a place to store them.

## Modular extensions

With our base in orbit and capable of sustaining itself and building new ships, we're ready to start extending it and doing some building and science.

![Origin Docking Wing](/img/kadet/005/origin-docking-wing.jpg "Origin Docking Wing")

Our first extension is the **Docking Wing**, replacing the existing shipyard.  Right now, everything has to be self-propelled because we don't have the technology to make "tugs" to carry things around, so two of the docking ports are carrying temporary monopropellant tanks.

I forget to put any kind of electricity generation on it, and it doesn't have much in the way of batteries, so it almost immediately runs out and goes adrift, out of control.  Thankfully, I still have the old self-powered shipyard, so after a brief collision that sends the new Docking Wing (slowly) spinning, we manage to dock the old shipyard to it and get it attached to the station.

![Origin Storage Wing](/img/kadet/005/origin-storage-wing.jpg "Origin Storage Wing")

My first attempt at a combined storage and power solution, the **Storage Wing** turns out to be a bit of a failure.  We dock it to one of the habitat rings, thinking that the hab ring's rotating washer can rotate it to face the sun along one axis, while its own rotating washers can rotate on the other axis.

Turns out, rotating many tonnes of storage is a very bad idea, especially when they're full and heavy.  The entire station torques every time we do, they take up to a minute to settle out after each rotation, and the hab ring we're attached to is starting to glitch and threatening to rip off the station after several adjustments.

![Origin Science Wing](/img/kadet/005/origin-science-wing.jpg "Origin Science Wing")

The new **Science Wing** attempts to offload storage from the *Storage Wing* so that we can replace it.  But more importantly, it also contains the labs and cyclotrons (particle accelerators) we'll need to do orbital experiments.  At the tip, I add an emergency lifeboat with 18 passenger slots and a nuclear reactor.

Having learned our lesson from the *Docking Wing*, there are a ton of Quantum Struts holding the whole thing rigid, and it ends up being quite stable despite the extreme mass.  (Each of the two cyclotrons weighs in at 30 tonnes.)

![Origin Omnidirectional Solar Array](/img/kadet/005/origin-omni-solar.jpg "Origin Omnidirectional Solar Array")

With the resources offloaded, we now seek to replace the Storage Wing with the **Omnidirectional Solar Array**, something I hope will provide enough power no matter what direction the sun is in.  (Life support systems turn out to be an *incredible* power drain!)

Unfortunately, it's a bust — the panels are great in certain orientations, but rapidly turn crappy again as they obscure each other.  Plus the part count is through the roof, adding tons of lag to an already laggy station.

This is also around when I start turning on the nuclear reactor to get us through the Kerbin eclipses.  We're at no real risk — even once the batteries drain, we have two hours before anyone dies, and the eclipse is shorter than that — but it's incredibly annoying to get pulled out of time warp every orbit because our power is depleted.

Well, it turns out the reactor generates so much power and will last so long that I decide solar power is pretty much irrelevant, so we ditch our solar array and use its monopropellant to put it in a lower orbit, where it will become a (ridiculously overengineered) communications satellite instead.

## Stability troubles

So it turns out there are some extreme stability issues with this station design.  For example, removing the monopropellant tanks and the old shipyard causes the Docking Wing to start oscillating and flailing around, not unlike one of those fan-inflated "waver" dolls you find outside as advertisements.  That's fun to watch when it's colourful nylon, but not so much when it's hundreds of tonnes of metal.  The oscillations are yanking the station around enough that, left unchecked, the entire crew would die of g-forces — even those nowhere near the docking wing.

Thankfully, my self-imposed "ironman contract" already spells out my right to reload and avoid the mass slaughter — if I screw up, I live with it, but if the game glitches and screws up for no good reason, I can go back and try to work around it.  (As a Kerbal veteran, I know how dangerous the so-called "[deep space Kraken][kraken]" can be.)  So I reload and I send Jeb out with a box of Quantum Struts to try to lock things down — basically, powered "tractor beams" that can be installed post-launch to hold things together.

Midway through applying them, the oscillations start again — we caused the very problem we're trying to stop! — but I quickly manage to bind a hotkey to disable all Quantum Struts on the entire station (thanks [Action Groups Extended][AGX]!) and they settle down.  We finish strutting the entire wing, turn them all back on, and it holds.

Note that this was before the Science Wing and Omnidirectional Solar Array, so both of those came stocked with Quantum Struts already.  I could've used regular struts for those, but I quite liked the look and ease-of-use of the Quantums, plus their stiffness and the ability to toggle them in emergencies.

## Science!

With the labs now in operation, we're finally able to begin doing some orbital science.

All of the experiments involve some combination of Eurekas (from scientists in the lab), Kuarks (from the Cyclotrons), and Bio-Products (from the Zoology Bay, and almost certainly a euphemism for poop).  In general, you start the experiment, accumulate the correct number of these — Kuarks decay, so you need a certain minimum production — and then finalise the results, where the experiment becomes unusable and you get a standard science report.

The standard Station Science experiments normally only give you 20% for transmitting, but our OKS Science Bay lets us process these for 5x the value, so we're able to transmit these home and then discard them.  The Fuel Science experiments are only 10% value and would only net us 50% if processed locally, so we send those back to Kerbin with a parachute and pick them up.

Meanwhile, maintaining the animals in the Zoology Bay is providing a slow trickle of Science — about 1 Science per day, but with diminishing returns over time.

So what technologies do we buy with all this Science?

[annotated tech tree]

With the 300 Science from the first batch of station experiments, we grab Nuclear Propulsion.  Nuclear engines are the most efficient moderate-thrust engines available, but they're heavy and terrible in the atmosphere.  Since we're building in space, most of their disadvantages are gone now, and they'll likely become our primary means of getting large ships around.

Our second batch of experiments focuses on fuels, and we get about 550 Science total.  That's enough to pick up Precision Engineering (160 Science) and Ion Propulsion (300 Science), so we can start sending efficient interplanetary probes out now.

Getting ion also unlocks a xenon-based fuel experiment, which gets us another 270 Science.  With a few extra points we have lying around, I grab Field Science (300 Science), which focuses on rovers and will give us something to do on the Mun and Minmus while our probes are in transit.

## Time for a do-over?

[Origin station]

So in the end, we have our completed space station … but I'm not particularly happy with it.

For one, the lag is awful.  That's partly because the base is big and does a lot of things at once, but also partly because it's assembled in space and is a bit haphazard, not to mention all the inter-wing docking ports.  I know there's some inherent KSP lag just from having ships or stations with large part counts, and my extensive mod list probably just makes that worse.

With the technology now at hand, we have the ability to use the Logistics Hub.  In essence, it's a miniature drone-based delivery system where you specify how much resources you want to send to what target, and it automatically sends them there, using a roughly correct amount of fuel to do it.

Obviously, this makes resupplying the station incredibly easy — we put a Logistics Hub and a giant tank out onto the launchpad, armed with many tonnes of resources and many more tonnes of fuel to send them, and off they go.  It also means we don't really need life support on our Kerbin station, because we can easily ship supplies up as needed.  In the name of lag avoidance, it's probably best to keep the station small and focused.

There were some screw-ups of my own, too.  For example, I messed up some docking ports in the Science Wing, so Kerbals have to EVA to get past the Cyclotrons.  And I didn't have ion engine technology when I built it, so I didn't have any xenon storage whatsoever, which is important for probes.

Plus, we're sitting in a ring of debris that threatens to kill us.  Sure, it's only *threatening* that — for the most part, it's completely harmless.  But I don't really want to be there when some debris comes in and tears the station apart.

And finally, we have the ability to build truly collosal things now.  *Origin* was a fun effort, a good experiment, and a great learning experience — but why settle for a station assembled in pieces from an earlier time when that was the only way?

![Origin 2](/img/kadet/005/origin-2.jpg "Origin 2")

And so, **Origin 2** was born.

It's a trimmed down, more compact version of the original — at only 78m long, I was able to design and build the entire thing as a single piece.  It weighs in at 244 tonnes dry weight, but once fully loaded, it's over 1500 tonnes.

All the life support components are gone, replaced with giant life support tanks that provide enough to supply my current 11 Kerbals for over 77 years.  The station can hold 42 Kerbals, though the practical limit is probably more like 20 due to the habitat rings; any more will involve taking shifts or dealing with highly unfit Kerbals.

The total RocketPart capacity is about 353 tonnes — enough to build the entire station over again, if need be — and ensures we won't need to resupply too often.

The nuclear reactor provides power for the entire structure, and the station has enough nuclear fuel to last almost a thousand years(!) at the current load.

The station's 90k units of xenon and giant ion engine allow us to boost up from a 1000km orbit to a 1500km orbit, safely clearing ourselves from the 1000km debris field — albeit costing half our entire fuel tank for just 180 m/s delta-v!  I'll definitely be holding myself to a strict "no debris" policy from this point onwards.

And finally, the habitat wheels are counter-rotating, meaning we're no longer weirdly violating the conservation of angular momentum or whatever.  Yay proper physics!

I'm a little worried because TAC says we only have three hours of power, and if I have to keep switching back every three hours so nobody dies, it's going to be a major pain for time acceleration.  But no, TAC just keeps track of the negative power amount, and when you return, it retroactively does the math and determines you're still okay.

## Onwards!

All in all, the new station is a great success on many different levels.  Not only can we build ships from it, but it also acts as a command centre for 


[kadet-1]: /2014/12/31/kadet-1/ "Space Kadet: First Flight — Wisq.net"
[kadet-2]: /2015/01/02/kadet-2/ "Space Kadet: You Spin Me Round — Wisq.net"
[kadet-3]: /2015/01/04/kadet-3/ "Space Kadet: Dark Side of the Mun — Wisq.net"

[realchute]: /2014/12/27/kerbal-4/#realchute "RealChute —Kerbal Space Program: Stellar Expansions — Wisq.net"
[sciencealert]: /2014/12/26/kerbal-3/#sciencealert "Kerbal Space Program: Pretty Fly (for a UI) – ScienceAlert — Wisq.net"
[US]: /2014/12/25/kerbal-2/#procedural-fairings--universal-storage "Universal Storage — Kerbal Space Program: Keepin' It Real — Wisq.net"
[fairings]: /2014/12/25/kerbal-2/#procedural-fairings--universal-storage "Procedural Fairings — Kerbal Space Program: Keepin' It Real — Wisq.net"

[station-science]: http://forum.kerbalspaceprogram.com/threads/54774 "Station Science — KSP Forum"
[fuel-science]: http://forum.kerbalspaceprogram.com/threads/67359 "Fuel Science — KSP Forum"
[OMS]: http://forum.kerbalspaceprogram.com/threads/81578 "Orbital Material Science — KSP Forum"
[safechute]: http://forum.kerbalspaceprogram.com/threads/100855 "SafeChute — KSP Forum"
[keepfit]: http://forum.kerbalspaceprogram.com/threads/67739 "KeepFit – Kerbal fitness dedgradation — KSP Forum"
[smart-parts]: http://forum.kerbalspaceprogram.com/threads/64227 "Smart Parts — KSP Forum"
[AGX]: http://forum.kerbalspaceprogram.com/threads/74195 "Action Groups Extended — KSP Forum"

