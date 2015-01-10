---
layout:     post
title:      "Space Kadet: Running in Circles"
subtitle:   "Minmus!  Mun!  Minmus?  FOR SCIENCE!"
date:       2015-01-12 12:00:00
author:     "Wisq"
header-img: "img/kadet/004/header.jpg"
---

<span class="note">
This is the fourth post of my highly-modded Kerbal Space Program playthrough.  The first is [here][kadet-1], the second is [here][kadet-2], and the third is [here][kadet-3].
</span>

When last we left our intrepid Kerbals, they had just returned from their first orbits of the Mun with <span class="science">411</span> Science, bringing them to a total of <span class="science">568</span>.

Time to spend it!

![Tech tree](/img/kadet/004/tech-pre-k30.jpg "Current tech tree")

We immediately research Advanced Construction (<span class="science">90</span>) and Specialised Construction (<span class="science">160</span>).  I figure we'll need these for orbital space stations later, but for now, they get us the Solar Particle Collector and the Multi-Spectral Imager.  The Imager isn't worth much Science per scan, but it works once per biome, so it adds up fast.  Plus, it can act as a SCANsat scanner, letting us graphically map the biomes of the planet and then also analyse that data for an extra boost.

We also research Space Exploration (<span class="science">90</span>), mainly for the 2Hot Thermometer.  Technically, I already had this instrument — a previous technology unlocked a [Universal Storage][US] wedge containing both the thermometer and barometer — but in the interests of fairness, I elected not to use the thermometer portion until I had actually researched it.

Finally, we research Advanced Flight Control (<span class="science">90</span>).  This finally gets us a 1.25m SAS module to control the ship, but more importantly, it unlocks the MechJeb manoeuvre planner, which takes a lot of the repetition and trial-and-error out of planning manoeuvres.

There's <span class="science">138</span> Science left over, but none of the other available technologies get us new experiments, and we're about to head to Minmus anyway.  So I decide to hold off for a bit and see what Minmus brings.

## To Minmus!

![Korona 30](/img/kadet/004/korona-30.jpg "Korona 30")

From the service module downwards, **Korona 30** is mostly the same as the previous *Korona 29*.  I add one of our new SAS modules to help move the ship while it's still large and awkward, but other than that, there's no reason to touch any of the boost stages.

The command module is a different matter.  I remove all the antennas and add a single communications dish up on the command pod nose, since we're going to need some serious range to transmit from Minmus.  The Imager goes on the other side to roughly balance the mass.  The radial parachutes are out, because I'm out of room but also confident the nose 'chutes are all we need.

I add a third layer of Universal Storage wedges.  The entire second layer is now dedicated to four Solar Particle Collectors, since we'll be grabbing samples from both Kerbin and Minmus.  The PresMat/2Hot and batteries are out, replaced by an alkaline fuel cell and a tank of hydrogen to run it — we're not having a repeat of *Korona 29* this time!

The removed batteries are replaced by 0.625m stack batteries inbetween the command pod and the nose parachute.  This turns out to be a *horrible* idea, but more on that later.

![Korona 30 around Minmus](/img/kadet/004/k30-minmus.jpg "Korona 30 around Minmus")

The flight goes well and is remarkably safe and uneventful, with tons of delta-v to spare.  The alkaline fuel cell proves its worth almost immediately — with over five days of continuous runtime, it allows us to deal with emergencies, but also to continue scanning and even transmitting Science while in shadow.

After a few loops around the equator, I switch to a polar orbit to make sure we cover all the biomes.  I've timed the 90º inclination burn so that we're right at the terminator (where night meets day), meaning that in our new polar orbit, we now have continuous solar with zero blackout time.

![Korona 30 scanning Minmus](/img/kadet/004/k30-scansat.jpg "Moving to high orbit for better scanning.")

Once we've collected Science for all the biomes, I expand the orbit out to 250km and begin doing our SCANsat scans until we reach 100%, then analyse and transmit the data.

Our return burn is unorthodox.  By carefully adjusting my burn to include a lot of *normal* in addition to the *prograde* portion, I manage to transfer from a polar Minmus orbit directly to a polar Kerbin orbit.  It's probably less efficient than just breaking orbit and then adjusting inclination, but we have delta-v to spare.

![Korona 30 return](/img/kadet/004/k30-return.jpg "Polar to polar.")

The polar Kerbin orbit allows us to scan Kerbin as well.  Without the advantage of non-stop solar power, it's here that I use most of our remaining hydrogen to continue scanning Kerbin's dark side.  We miss a few tiny spots, but at 99.9% scan completion and only a couple hours of hydrogen left, I call it and deorbit.

During our reentry, the fuel cell helps out one last time by giving us continuous power even after we've ditched the solar.  I narrowly avert disaster when, at 38km high, I think to double-check our parachutes — turns out the profile applied wrong and they were set to 25km pre-deployment again!  Thankfully, I can readjust that in-flight.

<span class="image-right">
![Korona 30 battery problem](/img/kadet/004/k30-slinky.jpg "That doesn't look right …")
</span>

The chutes pre-deploy properly at 5km and deploy at 1km, and it's here that I realise the folly of putting the batteries inbetween the command pod and the parachute.  The physics are pulling hard enough on the batteries to create a visible gap between them, like a weird sort of Slinky.  Time acceleration makes the gaps wider, and (I tested this later) 4x time acceleration would've made them break apart completely.

Thankfully, [SafeChute][safechute] always pulls us out of time warp before the parachutes deploy, and [RealChute][realchute] parachutes deploy slowly to minimise the g-force shock.  So the parachutes hold, I keep my hands off the time warp controls, and we land safely.

And so, after 42 days in space, we've returned with <span class="science">849</span> Science.  Oh man.

<div class="clear"></div>

## Intermission: Science!

Added to our previous leftovers, we now have <span class="science">987</span> Science.  But what to spend it on?

I take stock of my priorities at this point.  In no particular order:

* landing on the Mun and Minmus
* building an orbital space station
* setting up a satellite network so we can send unmanned probes
* launching probes to nearby planets

Crunching the numbers, my first thoughts are to push for 2.5m Rockomax parts and Ion Propulsion.  The Rockomax portion involves Advanced Rocketry (<span class="science">45</span>), Heavy Rocketry (<span class="science">90</span>), and Heavier Rocketry (<span class="science">160</span>).  For Ion, we need and Advanced Electrics (<span class="science">160</span>), Precision Engineering (<span class="science">160</span>), and Ion Propulsion (<span class="science">300</span>).

The would-be total: <span class="science">915</span> Science, leaving us with <span class="science">72</span>.

I quickly reconsider this plan, though.  We've already got a working 1.25m stack.  We don't yet have any satellite dishes powerful enough to reach other planets, meaning long-range ion probes would be useless.  Space stations need big solar and big batteries, and none of these technologies provide those.  And we don't have some important landing techs, either.  We'd be researching ourselves into a corner, with not enough to do *any* of the above.

Instead, I decide to push in a bolder direction, and after a bit of *Launchpad Science™* around the Kerbal Space Centre, we have enough for the top-tier science instruments:

![Tech tree](/img/kadet/004/tech-pre-k31.jpg "Current tech tree")

Advanced Electrics (<span class="science">160</span>) gets us deployable, sun-tracking solar panels, and larger radial batteries.  Handy, since we don't have better stack batteries yet.

Electronics (<span class="science">300</span>) gets us the Radio & Plasma Wave Science (RPWS) instrument and the Double-C Seismic Accelerometer.  The RPWS gets us data from low and high orbit, while the Double-C will be useful later once we land.

Advanced Science Tech (<span class="science">550</span>) is the real star of the show, getting us the GravMax Negative Gravioli Detector, the Sensor Array Computing Nose Cone, and the SCAN SAR Altimetry Sensor.  The GravMax in particular turns out to be utterly amazing, with high-value *per-biome* science reports at *both* low *and* high orbit.  Awesome!

This pretty much maxes out our science instruments, and with all the new scanning tools since our last Mun mission, it's time to go back.  Onwards!

## To the Mun! (Again.)

Unfortunately, after his 42 days in a cramped command pod, Bob Kerman is at around 33% physical conditioning (as per the [KeepFit][keepfit] mod) and is in no condition to fly.  We do a bit of hiring and pick up scientists Shepdrin and Halwig Kerman.  We also pick up promising engineer Alfurt Kerman, since he's both decently brave and not stupid at all, so why not.

![Korona 31](/img/kadet/004/korona-31.jpg "Korona 31")

**Korona 31** sees several modifications from *Korona 30*.  We redo the science instrument loadout, eliminating most of the previous instruments since we already had Munar readings for them.

We keep two Solar Particle Collectors and the Imager, and we "wedge in" (har) the RPWS, GravMax, and atmospheric sensor.  I also re-add the PresMat and 2Hot to the capsule nose, just in case they pick up anything.

The solar panel body coating is replaced by an array of eight deployable panels, and the entire bottom layer of wedges is full of the new radial batteries, giving us a whopping **two days** of life support battery power.  And finally, I fix the parachute profile so we won't have any troubles with reentry.

![Korona 31 ascent path](/img/kadet/004/k31-ascent.jpg "Only 442 m/s needed to reach orbit.")

This time, I experiment with a shallow launch, going straight for 60 degrees pitch right as we leave the launchpad.  It's particularly efficient, and by the time we reach 100km apoapsis, we've already built up over half our orbital speed.

Another uneventful by-the-numbers flight ensues.  We're racking up Imager and GravMax scans left and right, and we do a complete polar biome survey of the Mun.  I lose some data due to overzealous transmission queueing running us out of power, but I'm able to retake those measurements.

Once again, I use the Normal trick to return to a polar Kerbin orbit to collect science there.  That part goes fine, but once we reach Kerbin, we need to circularise our highly eccentric polar orbit down to a circular one.  Just one minute before the planned burn at 250km altitude, I realise that we're going to run out of fuel mid-burn!  I have to settle for aerobraking instead, but we avoid being stranded in space.

![Korona 31 aerobraking](/img/kadet/004/k31-aerobraking.jpg "Aerobraking with the Trajectories mod.")

We dip into Kerbin's atmosphere a total of five times, using our drag to bleed off orbital speed — and we get to collect data with our atmospheric sensor, too.

Once we've tightened up our orbit so that we're straddling the 250km line between low and high Kerbin orbit, we do a complete GravMax scan of Kerbin as well, and we return home — hauling a ridiculous <span class="science">1705</span> Science!

## Intermission 2: Science Harder

With <span class="science">1741</span> Science available, I figure it's time we built a space station.

For starters, we'll get plenty more science out of it — I know that [Station Science][station-science] (and its add-ons, [Fuel Science][fuel-science] and [Orbital Material Science][OMS]) will give us tons to study in orbit.

Beyond that, though, a space station gives us a "focal point" for space operations, somewhere to coordinate space operations and minimise our travel in and out of the atmosphere.  With a station, not every ship needs to be designed for re-entry.  Even a sample-return probe could return to the station, drop off the samples, pick up new ones, refuel, and head right back out again.  Once we have enough completed experiments (and maybe a Kerbonaut wants to come home), we pop them into a shuttle and send them down.

My space station technology shopping list looks something like this:

![Tech tree](/img/kadet/004/tech-pre-k32.jpg "Current tech tree")

* Advanced MetalWorks (<span class="science">300</span>) and Meta-Materials (<span class="science">550</span>) for the Clamp-o-tron Senior, a large-sized docking port to connect 2.5-metre-wide components together
* Advanced Rocketry (<span class="science">45</span>), Heavy Rocketry (<span class="science">90</span>), and Heavier Rocketry (<span class="science">160</span>) for 2.5m rockets to lift the (typically also 2.5m) station components
* Large Electrics (<span class="science">300</span>) for the giant solar panels
* Specialised Electrics (<span class="science">550</span>) for the giant 2.5m stack batteries

Unfortunately, that's a total of <span class="science">1995</span> Science, and we're <span class="science">254</span> short.  *So close!*

I go with just the two Electrics techs for now, and plan one more mission back to Minmus.  With the GravMax, RPWS, and our new Soil Moisture Sensor, we should be able to collect enough to finish the list.

## To Minmus! (Again!)

![Korona 32](/img/kadet/004/korona-32.jpg "Korona 32")

There's not much to say about **Korona 32**.  Orbital missions around Kerbin's moons have become pretty routine by now.  There's the usual assortment of minor screw-ups (*we r profeshunuls!*) but nothing major.

We're back to two layers of wedges, and aside from the fuel cell and batteries, we only bring along wedges for the RPWS and atmosphere sensor.  The rest of the instruments go on the nose, including the GravMax, PresMat, and 2Hot.

A new Soil Moisture Sensor sits inbetween the capsule and the parachute, so I add some radial parachutes just in case that ends up like *Korona 30*'s batteries.  And finally, I add eight Radioisotope Thermal Generators, which should provide plenty of non-stop power even in shadow.

<iframe width="750" height="422" src="//www.youtube.com/embed/h--BrRo2uIk" frameborder="0" allowfullscreen></iframe>

It's rookie scientist Halwig's turn to go into space, because Bob and Shepdrin are still recovering.  Our ascent profile is our best yet: Like before, we aim for a 60º ascent as soon as we leave the pad, but I also nose down from surface velocity prograde to orbital prograde once we hit about 30km, since we've exited the deep atmosphere and aerodynamics are no longer a major issue.

![Korona 32 circularisation manoeuvre](/img/kadet/004/k32-circular.jpg "Now _that's_ a flat ascent.")

We gain so much orbital speed by the time we break out of the atmosphere that our final circularisation burn at 100km is only 92 m/s.  I need to start logging numbers to be able to compare ascent profiles, but my recorder says we spent 3457 m/s delta-v using this shallow profile, so that seems good.

Breaking into space, I get a [ScienceAlert][sciencealert] notification that I should do a Soil Moisture scan.  Sure, why not?  Well, I'll tell you why not: It involves extending a giant rotating boom, from *inside* the protective fairings — the ones we haven't blown off yet!

![Korona 32 fairings mistake](/img/kadet/004/k32-fairings.jpg "Oops.")

Not only does the boom arm magically pierce through the fairings, but when we hit 75km altitude a moment later and the fairings blow automatically, I hear a *CLANG* as one of them hits the boom arm and gets stuck.  It's flailing around near the solar panels, and for a moment, I'm worried we may have to abort.  Nothing is damaged, though, and we manage to shake off the loose fairing and continue.

As we approach Minmus, the solar panels retract at 75km altitude.  Apparently, the altimeter triggers even on other bodies — including ones without atmospheres — so our solar panel toggle system is a bust.  Ah well.

We collect our data and break Minmus orbit with 1581 delta-v to spare — enough that we can afford to circularise around Kerbin at 75km and ensure a slow, safe reentry.

The parachutes screw up yet again, but in a non-fatal way — two of the radials pre-deploy late, fully deploy early, and are unusually large.  (Apparently parachute calibration is hard or something, I dunno.  It's certainly better than failing to deploy.)

Our total haul is <span class="science">830</span> Science.  Yeah, that'll do.  It's space station time!

*In our next episode: We design and build a space station! … Hopefully.  Unless I've forgotten something.*

[kadet-1]: /2014/12/31/kadet-1/ "Space Kadet: First Flight — Wisq.net"
[kadet-2]: /2015/01/02/kadet-2/ "Space Kadet: You Spin Me Round — Wisq.net"
[kadet-3]: /2015/01/04/kadet-3/ "Space Kadet: Dark Side of the Mun — Wisq.net"

[realchute]: /2014/12/27/kerbal-4/#realchute "RealChute —Kerbal Space Program: Stellar Expansions — Wisq.net"
[sciencealert]: /2014/12/26/kerbal-3/#sciencealert "Kerbal Space Program: Pretty Fly (for a UI) – ScienceAlert — Wisq.net"
[US]: /2014/12/25/kerbal-2/#procedural-fairings--universal-storage "Universal Storage — Kerbal Space Program: Keepin' It Real — Wisq.net"

[station-science]: http://forum.kerbalspaceprogram.com/threads/54774 "Station Science — KSP Forum"
[fuel-science]: http://forum.kerbalspaceprogram.com/threads/67359 "Fuel Science — KSP Forum"
[OMS]: http://forum.kerbalspaceprogram.com/threads/81578 "Orbital Material Science — KSP Forum"
[safechute]: http://forum.kerbalspaceprogram.com/threads/100855 "SafeChute — KSP Forum"
[keepfit]: http://forum.kerbalspaceprogram.com/threads/67739 "KeepFit – Kerbal fitness dedgradation — KSP Forum"
[smart-parts]: http://forum.kerbalspaceprogram.com/threads/64227 "Smart Parts — KSP Forum"
[AGX]: http://forum.kerbalspaceprogram.com/threads/74195 "Action Groups Extended — KSP Forum"
