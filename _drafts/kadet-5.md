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

[Origin core]

Armed with only a very basic understanding of the MKS/OKS life support loop from their wiki, I designed this simple station core.  At the core were the three modules needed for a basic life support system (plus a science lab), and the habitat rings and greenhouses would sit symmetrically around them.

The idea was that the habitat rings would counter-rotate (using some Infernal Robotics rotating docking washers) and thus cancel out each other's torque — but just in case they didn't, they would be perpendicular to the long axis and would thus not cause the station to rotate very much.

Of course, there was no way I was going to get something this heavy and weirdly-shaped into orbit all in one piece.  Since the aeroponics wings formed the longer of the two axes, I broke those off and transported it in three separate trips.

But of course, like any new heavy construction project, the hard part is getting it into orbit.

[Sky Krane representative]

Most of the **Sky Krane** series of ships looked something like this.  As per traditional rocket design, they started out narrow at the top — keeping in mind that "narrow" is still two and a half metres across for most space station components — and then flared out for a wider base, this time using a quad-coupler.

We ended up launching a total of 19 Sky Kranes, and almost every one taught us something new:

**Sky Krane 1** taught us that yes, we still need fairings; but, **Sky Krane 2** showed us why.  Turns out that stacks of docking ports have a remarkable bendiness to them — like a Slinky in space — and a series of them can cause your payload to actually bend almost 180º and hit your own ship.  Having two Fairing Base Rings connected by fairings provides a major structural boost, even once you're up in outer space.

**Sky Krane 5** taught us that you can do a 360º backflip over the launchpad and still successfully make it into orbit and deploy the first section of your new space station.

Said first section of our space station taught us that habitat rings rotate slowly on their own, no Infernal Robitics needed.  Whoops.  Of course, since I wasn't expecting this, they're both rotating the same direction, which isn't as cool.  But ah well.  The *real* lesson here is that I should test station components on the launchpad before I pack them up and send them into space.

**Sky Kranes 6** and **7** demonstrated that aerodynamic issues can actually get worse as your ship gets smaller and lighter.  If your thrust-to-weight ratio is too large, you have to either be exceedingly aerodynamic, or you need to limit your thrust and watch the dymamic pressure ("Q") to keep it under control.

**Sky Krane 8**'s long and costly inclination burn is a reminder that we should've checked our inclination before dropping off the first base component (it was an annoying 6º inclination) — and, failing that, that launching into an inclined orbit is much more efficient if you carefully time and aim the launch.

**Sky Krane 10** reminded us how dangerous high-speed atmospheric aborts can be.  We lost our heat shield and one of the command pod's solar panels, but everyone survived.

**Sky Krane 11** again showed us how recoverable a 360º backflip can be, but more importantly, it demonstrated the pitfall of waiting until we reach the station to discard our fairings.  There's now a huge debris field on the same orbit as Origin Station, and we ended up rendezvousing with a discarded fairing rather than the station.

**Sky Krane 12** found a new use for the Mk2 Lander Can — if you attach a large docking port to the top, it becomes a very effective heavy station pusher.  We used it to correct the station's inclination burn, getting it to a perfect equatorial orbit.

**Sky Kranes 13** and **14** finally 

**Sky Krane 13** seeks to address this with a rotateable solar panel array, but our existing *Sky Krane* design finally hits a brick wall — everything is just far too light, and there's no way it can hold its own against the aerodynamic forces.  After **14** fails the same way despite every precaution, I decide it's time for a redesign.

[Sky Krane 15]

Newly-hired pilot Genelas takes the helm of **Sky Krane 15**, a highly experimental redesign.  We're using quad stacks with radial decouplers, and tons of struts to hold everything together.  I add a bunch of safety systems, including a Launch Escape System — basically a small nose booster to make sure the pod gets clear of the rocket — and both stack and radial parachutes for extra safety.

My launch is too shallow, and the stack parachute pays off when the radials get burned off due to speed.  But the ship is *incredibly* stable — a huge relief after all the Slinky-ships! — and I'm extremely confident that we've got a winner here.

Genelas is joined by engineer Greglock in **Sky Krane 16**, which makes it to the station boldly and without incident.  The trip is so efficient that we never even finish using the quad stacks, but that also unfortunately means we add a ton more debris to the expanding cloud around the station.  (Watching the debris scream by, it feels like it's only a matter of time before that comes back and bites us in the ass, even if the odds of a collision are infintesimal.)

[Mega Lifter 1]

The Sky Krane 16 design is pretty darn good, but it's also a major nuisance to adapt to new payloads, involving rebuilding and re-strutting the lower engine section.  I finally decide that I'm sick of trying to get ships into orbit — we have enough engineers on the station that we should be building things in space, damn it!

**Mega Lifter 1** is our first mission on the path to making that happen.  Weighing in at a ridiculous 2148 tonnes — and a lowly 1.14 thrust-to-weight ratio (TWR), despite all the engines — it's the biggest rocket I've ever constructed in any game ever, by far.

At the core is a Multipurpose Storage Tank XL from the Hangar mod, a tank that allows you to choose how much is allocated to each resource.  Here, I'm using it purely to transport 46 tonnes of "RocketParts", a dense resource used to build ships off-world at a 1-to-1 mass ratio (1 tonne of rocketparts per 1 tonne of ship).  We'll still need an Orbital Shipyard to make use of the parts, but getting them up there will be a big proof-of-concept step to making that work.

The launch feels like it's in slow motion.  I'm used to operating at much higher TWRs and speeds, and this sort of launch barely feels like we're going anywhere at all.  But it seems like larger weights and lower TWRs really are the key to safe launches, because brave Genelas makes it into orbit and to the station with no problems at all.  We manage to dock with over 90% of our monopropellant remaining, despite our huge mass and ridiculous number of RCS thrusters.

[Sky Krane 17]

Initially thought to be "the final *Sky Krane*", **Sky Krane 17** is where the magic begins.  It's also our most risky mission so far.  We're launching our Orbital Shipyard, and if anything goes wrong, it's going to be pretty tricky to get new pilot Billy-Bobbery out of there in one piece.

To help him out, we install a [Deployable Emergency Reentry Pod], or DERP.  The idea is that one button press will inflate it and evacuate the pilot to it, while a second will then detach it.  The DERP propulsion module includes a small parachute, but in the worst case, we can just bail and use a personal parachute instead.

The ship rocks around like crazy during launch, but it survives and makes it into orbet with 2k delta-v remaining.  Since this is a one-way trip, that's quite acceptable, and we get it to the station without needing the final stage.

* rocking like crazy, but survives
* orbit with 2k delta-v remaining
* 14 m/s inc burn
* won't even need final stage

* Sky Krane 18
* machinery, "spare" spare parts, more rocket parts
* machinery and spare parts are HEAVY, 16 tonnes each for 850
* old Sky Krane design, beef up the fuel tanks due to heavy payload
* no pilots left -- we'll send Bill
* 4025/4787 delta-v, should be enough
* dual docking ports, will sit between an existing module and the base
* will provide additional 1.25m docking ports on sides
* abort will be ... dicey

* beautiful takeoff
* change of plan: dock backwards to pusher, siphon fuel, jettison tank, dock backwards to station
* works perfectly
* all on video

* Temporary Base Supply Hold
* Pioneer Module with a simple lander to get it in position


LOTS OF TIME LATER

* big bases are untenable due to lag
* small bases, logistics resupplies
* inflatable life support can last for years
* nuclear reactor is da shit
* watch out for solo docking ports
* station science experiments can be transmitted

* ~300 science from first batch of experiments
* research nuclear propulsion
* will be moving big stuff, we're already in space

* ~550 from second batch
* research precision engineering, ion propulsion, fuel systems
* tired of station science, going interplanetary for a while




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

