The headsets I've used over the years, from the Vive Pro to the Steam Frame I use today.

<style>
.vr-rating-stars {
  color: var(--site-quiet, #939393);
  letter-spacing: .08em;
  margin-inline-end: .4em;
}
.vr-rating-stars strong { color: #ffd166; }
.view table:has(.vr-rating-stars) td:last-child {
  font-variant-numeric: tabular-nums;
  white-space: nowrap;
}
</style>

## Steam Frame

I stream VRChat from my PC to the Frame and use the [Arcturus Vision Camera](https://arcturus.vision/) for stereo color passthrough. My Babble mouth tracker plugs into a Seminer splitter with a 60 cm USB-C cable. The Frame takes the wired MIPI camera feed over USB and handles the mouth tracking. <a href="https://www.amazon.de/dp/B0DCBNGXKG" rel="nofollow noreferrer">USB-C splitter I use</a>

I use [QuestLHSync](https://github.com/CreoleVR/QuestLHSync) to keep my Lighthouse trackers lined up with the Frame. The headset's tracking cameras pick up the flashes from my base stations, and the SteamVR driver on my PC uses those to line up the tracking spaces.

My avatar draws a floor plan that I use as my room boundary in VRChat. Object Tracking sends the room alignment so the plan stays lined up with my floor. I find it easier to read than SteamVR's Chaperone grid.

I like how clear the lenses are, and the eye and face tracking are more than good enough for VRChat. Valve puts the top strap and the controller hand straps in the [Steam Frame Ergonomic Accessories Kit](https://store.steampowered.com/app/4978440/Steam_Frame_Ergonomic_Accessories_Kit/). The kit was out of stock, so I've been using the Frame without the straps. I've already had a controller fly out of my hand and across the room twice.

I'm also building a [PCIe USB hub for the Steam Frame](/Steam%20Frame%20PCIe%20USB%20hub/).

### Software

- **Steam Frame**
  - SteamOS and SteamVR
  - Steam Link receives the PC VR stream.
  - [FrameMover](https://github.com/NotZoeyDev/FrameMover) moves my playspace.
  - [Babble Frame Runtime](https://github.com/Project-Babble/Babble-Frame-Runtime) reads the eyes and the wired mouth camera.
  - [QuestLHSync](https://github.com/CreoleVR/QuestLHSync) reads the base station flashes from the tracking cameras.
- **PC**
  - Steam and SteamVR handle the PC side of the stream.
  - VRChat receives the eye and mouth tracking over native OSC.
  - QuestLHSync's SteamVR driver aligns the Lighthouse devices.
  - [Object Tracking](/Object%20Tracking/) sends the room alignment and the movement of my props to VRChat.

### Rating

| Area | Stars out of 5 |
| --- | --- |
| Picture and lenses | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |
| Comfort | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |
| Tracking and controllers | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| Eye and face tracking | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★★</strong></span> 5/5 |
| Audio and microphone | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |
| PC connection | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★★</strong></span> 5/5 |
| Ease of setup | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |

### Notes

#### Packet loss on 6 GHz

I had my router's 6 GHz band on a separate network from 2.4 and 5 GHz. With that setup I saw more than 60% packet loss on the Frame. I ran into trouble with the separate 6 GHz adapter too, while my Vive setup behaved normally. I could hear my friends' voices echo. I suspect the echo was related to the packet loss, but I haven't pinned down the cause.

#### When eye tracking froze

I've had eye tracking freeze while my mouth still moved. SteamVR's log on the Frame, `~/.steam/steam/logs/eyetracking.txt`, showed `Failed to upload weights to cDSP: 1`.

The last time I logged it was 14 November 2026, on SteamOS 0.4.5, SteamVR 2.18.2 and Babble Frame Runtime 1.3.

## Quest 3

For my unicorn setup, I mounted a tracker on the top left of the Quest 3 to line it up with my Lighthouse trackers. I used [Valve Index controllers](https://store.steampowered.com/app/1059550/Valve_Index_Controllers/) with it.

### Software

- **Quest 3**
  - [Virtual Desktop](https://www.vrdesktop.net/)
- **PC**
  - Virtual Desktop Streamer
  - SteamVR
  - [OVR Advanced Settings](https://github.com/OpenVR-Advanced-Settings/OpenVR-AdvancedSettings) for playspace movement

### Rating

| Area | Stars out of 5 |
| --- | --- |
| Picture and lenses | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |
| Comfort | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| Tracking and controllers | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★</strong>☆</span> 4/5 |
| Eye and face tracking | <span class="vr-rating-stars" aria-hidden="true">☆☆☆☆☆</span> 0/5 |
| Audio and microphone | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| PC connection | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| Ease of setup | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |

### Notes

I left eye and face tracking unfinished on the Quest 3. Between the USB ports I needed and getting power to the headset and accessories, I never found a setup I was happy with.

## Vive Pro Eye

I had two Vive Pro Eye setups. Both had a mounted face tracker, [Valve Index controllers](https://store.steampowered.com/app/1059550/Valve_Index_Controllers/) and an [Antlion Audio ModMic](https://antlionaudio.com/collections/microphones).

### Software

- **PC**
  - SteamVR
  - [VIVE Wireless](https://www.vive.com/us/support/wireless-adapter/category_howto/about-vive-wireless.html)
  - [SRanipal](https://developer.vive.com/us/hardware/facial-tracker/) for eye and face tracking
  - OVR Advanced Settings

### Rating

| Area | Stars out of 5 |
| --- | --- |
| Picture and lenses | <span class="vr-rating-stars" aria-hidden="true"><strong>★★</strong>☆☆☆</span> 2/5 |
| Comfort | <span class="vr-rating-stars" aria-hidden="true"><strong>★★</strong>☆☆☆</span> 2/5 |
| Tracking and controllers | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★★</strong></span> 5/5 |
| Eye and face tracking | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| Audio and microphone | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| PC connection | <span class="vr-rating-stars" aria-hidden="true"><strong>★</strong>☆☆☆☆</span> 1/5 |
| Ease of setup | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |

## Vive Pro

I used [Valve Index controllers](https://store.steampowered.com/app/1059550/Valve_Index_Controllers/), a ModMic and a mounted face tracker on the Vive Pro as well.

### Software

- **PC**
  - SteamVR
  - VIVE Wireless
  - SRanipal for face tracking only
  - OVR Advanced Settings

### Rating

| Area | Stars out of 5 |
| --- | --- |
| Picture and lenses | <span class="vr-rating-stars" aria-hidden="true"><strong>★★</strong>☆☆☆</span> 2/5 |
| Comfort | <span class="vr-rating-stars" aria-hidden="true"><strong>★★</strong>☆☆☆</span> 2/5 |
| Tracking and controllers | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★★★</strong></span> 5/5 |
| Eye and face tracking | <span class="vr-rating-stars" aria-hidden="true"><strong>★★</strong>☆☆☆</span> 2/5 |
| Audio and microphone | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |
| PC connection | <span class="vr-rating-stars" aria-hidden="true"><strong>★</strong>☆☆☆☆</span> 1/5 |
| Ease of setup | <span class="vr-rating-stars" aria-hidden="true"><strong>★★★</strong>☆☆</span> 3/5 |

## For experiments

### Quest Pro

I got the Quest Pro for eye tracking. The better picture on the Quest 3 mattered more to me day to day, so I kept the Quest Pro for experiments.

<h3 id="steam-index">Steam Index</h3>

I bought this headset ahead of nofio and used it for about ten hours. The view through the lenses looked low-res to me, and I kept running into technical issues.

I didn't know my actual IPD at the time. The lenses couldn't move quite as far apart as they could on my other headsets, so this was the hardest one to line up with my eyes. The parts I'd bought for DIY eye and face tracking stayed unused.
