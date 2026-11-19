Object Tracking uses SteamVR trackers and controllers to move objects on your VRChat avatar. I built it for live performances, where a physical pole, aerial hoop, or swinging bench needs to move the same way in VR as it does in the room.

The app is still in development. I'm working toward a Steam release.

[Wishlist on Steam](https://store.steampowered.com/app/3140770/) · [Performance demo](https://x.com/Hackebein/status/1817729114142343460) · [Setup guide](#why-i-made-the-object-tracking-guide-interactive)

## History

<ol id="tracking-history" class="wide-media tracking-scale" role="list" aria-label="From a pole to a room">
  <li>
    <figure class="signal">
      <div class="pole-schematic" role="img" aria-label="A straight pole fixed in place"></div>
      <figcaption>
        <time datetime="2022">2022</time>
        <a href="#2022-pole-sync">Pole Sync</a>
        <span>1 DOF · Spin in place</span>
      </figcaption>
    </figure>
  </li>
  <li>
    <figure class="signal">
      <img src="/Object%20Tracking/aerial-hoop-2023.jpg" alt="Two VRChat clients showing the same tracked aerial hoop" width="1200" height="675">
      <figcaption>
        <time datetime="2023">2023</time>
        <a href="#2023-the-aerial-hoop">Aerial hoop</a>
        <span>6 DOF · Move and turn</span>
      </figcaption>
    </figure>
  </li>
  <li>
    <figure class="signal">
      <img class="tracked-room-photo" src="/Object%20Tracking/tracked-room-2026.jpg" alt="Unity scene view of my room layout, with brightly colored walls, a stone arch, and a crescent aerial hoop" width="1998" height="1427">
      <figcaption>
        <time datetime="2026">2026</time>
        <a href="#from-a-prop-to-a-room">Room alignment</a>
        <span>6 DOF props + a room reference</span>
      </figcaption>
    </figure>
  </li>
</ol>

### 2022: Pole Sync

After [VRChat added OSC](https://hello.vrchat.com/blog/vrchat-osc-for-avatars), I strapped an ESP32 and an IMU to my pole. I wanted the pole in VRChat to spin at the same speed as the one in my room. I called it Pole Sync.

I first pictured a candy cane for Christmas. By December I was trying it on an [X-Fly pole](https://x-pole.co.uk/shop/aerial/x-fly/x-fly/). It hangs from above and can swing, so spin alone wasn't enough. I could measure the rotation, but the sensor wasn't enough to tell me where the pole was in the room.

### 2023: The aerial hoop

If I could track a pole, why stop there? I ordered an aerial hoop. I'd only seen a handful of videos and figured that if dancing didn't work out, at least I'd have a swing.

I showed an early version to friends in April. By July, I could [show the hoop moving in two VRChat clients side by side](https://x.com/Hackebein/status/1678863438427090951). Setting up all the avatar parameters and animators by hand still took too long, so I started turning it into something other people could set up too.

### 2024: The beta and the swinging bench

I put out the [first open beta](https://x.com/Hackebein/status/1819711939246801397) and spent the rest of the year making it easier to set up. When winter came, I swapped the hoop for a [swinging bench](https://x.com/Hackebein/status/1868743681324597273) and brought it into VRChat.

![An avatar sitting on the tracked swinging bench in red light](/Object%20Tracking/swinging-bench-2024.jpg)

### Waiting for native tracking

By the end of 2024, I was starting to wonder if VRChat would make my project redundant. I'd heard that items and accessories were coming. Then VRChat showed the [Camera Dolly and its OSC controls](https://ask.vrchat.com/t/developer-update-13-february-2025/41299) in early 2025. If I could upload my own item and move it over OSC the way you could move the camera, I could just put a tracker on a prop and let VRChat do the rest. That was what I'd wanted from the start.

I waited to see if those pieces would come together. The Dolly shipped, but the item controls I'd imagined never arrived. In early 2026, I picked Object Tracking back up.

### Back to work in 2026

While I was away from it, I heard about people charging around $30 a month for access to versions of the software I'd put on GitHub for free. That played a part in my decision to keep the new source code private for now. The [original desktop app](https://github.com/Hackebein/Object-Tracking-App) and [Unity package](https://github.com/Hackebein/Object-Tracking-Unitypackage) are still on GitHub.

I also decided to make this a product I could support. I put together a [Steam store page](https://store.steampowered.com/app/3140770/) and shared a [new beta in July](https://bsky.app/profile/hackebe.in/post/3mr4mx5ynbc27). The Steam app is still in development. Today the setup needs SteamVR, a tracker or controller, and an avatar you can set up in Unity. The desktop app sends the motion over OSC, and the avatar uses the Object Tracking package from my [VPM listing](https://vpm.hackebein.dev/).

### From a prop to a room

In July I tried building a [small virtual studio](https://bsky.app/profile/hackebe.in/post/3mqsikhu4l22b). I posted the uncut test with the tracking glitches still in it. By November, I could [line up the virtual layout with my room](https://x.com/Hackebein/status/2121236139449385235).

The hoop had to stay where I could reach it. In a room, it also has to line up with the floor, walls, and furniture. The props still move and turn in all 6 DOF. I can shift the whole room layout in three directions and turn it while keeping the floor level.

### Tybi's video

Tybi made a video for Object Tracking. It still makes me laugh.

<blockquote class="twitter-video" data-dnt="true" data-theme="dark">
  <p><a href="https://x.com/Tybi_VRC/status/2105798842000015712">Watch Tybi's original post on X</a></p>
</blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

## Motivation

I like being able to reach for a cup or pull up a chair in VRChat and find it where I left it in my room. The same idea works for a bottle, a camera on a gimbal, or a whole studio. [Jangxx's VRC Tracked Objects](https://github.com/jangxx/VRC-Tracked-Objects) is another take on it.

I hope many people will discover this tool and use it to create something creative. Don't forget to share your creations on my socials.

<h2 id="why-i-made-the-object-tracking-guide-interactive">Setup guide</h2>

The [interactive setup guide](https://object-tracking.hackebein.dev/#how) puts the steps next to an illustrated Unity editor. Pick **Check the LEDs** and the guide takes you to the five green lights on the Tracker component. You can leave that step open while you check your own setup.

[![The setup guide with Check the LEDs selected and the cursor pointing at the five green lights in the illustrated Unity Inspector](/Why%20I%20made%20the%20Object%20Tracking%20guide%20interactive/check-the-leds.jpg)](/Why%20I%20made%20the%20Object%20Tracking%20guide%20interactive/check-the-leds.jpg)

### Let the reader decide when to move on

I'd already written out the steps. I kept thinking about what happens right after you read one. You switch back to Unity, look at the Inspector, and wonder if you're looking at the right thing.

That's why manuals have pictures. It's quicker to spot five green lights in a picture and compare them with your screen than to read a description and work out where to look. I wanted to keep that side-by-side comparison and let people step through it at their own pace.

The bit I wanted to try was giving people control of the pace. You can stop at the lights while you sort out your own setup, or jump back to see which menu added the tracker. You can also skip straight to the step you came for. Each click has a reason. It shows you what to look for or what should have changed.

There's a small piece of research behind that hunch. Richard Mayer and Paul Chandler found that letting people advance an animation in sections helped them apply what they'd learned in a new situation, though it didn't improve how much they remembered. They were teaching how lightning forms. My question is whether the same idea helps when you're switching between a guide and your own Unity project. [Mayer and Chandler, 2001](https://tecfa.unige.ch/tecfa/teaching/methodo/Mayer_Chandler01.pdf)

A README is handy when I need to look up a menu name. A video is handy when I want to see the whole thing done. With this guide, I'm trying to make it easier to pick up where you left off while you're doing the work yourself.

## Gallery

<div class="object-tracking-gallery wide-media">

<figure class="signal">
  <img src="aerial-hoop-performance-2023.jpg" alt="My avatar performing on an aerial hoop in a dim VRChat room" loading="lazy">
  <figcaption>Aerial hoop performance, June 2023</figcaption>
</figure>

<figure class="signal">
  <img src="cup_staying_on_tracker.png" alt="A blue cup with a straw sitting on a Vive tracker" loading="lazy" width="279" height="956">
  <figcaption>Cup prototype, March 2024</figcaption>
</figure>

<figure class="signal">
  <img src="bottle-test-2024.jpg" alt="Blue bottle in the foreground of a first-person VRChat view" loading="lazy">
  <figcaption>Bottle test, August 2024</figcaption>
</figure>

<figure class="signal">
  <img src="aerial-hoop-solo-2026.jpg" alt="A gold-clad avatar hanging upside down from a circular aerial hoop in an orange tunnel" loading="lazy" width="1920" height="1080">
  <figcaption>Aerial hoop video recording (solo), September 2026</figcaption>
</figure>

<figure class="signal">
  <img src="aerial-hoop-duo-2026.jpg" alt="Two avatars in an orange tunnel, one with a white crescent hoop and the other with a dark circular hoop" loading="lazy" width="1920" height="1080">
  <figcaption>Aerial hoop video recording (duo), September 2026</figcaption>
</figure>

<figure class="signal">
  <img src="tybi-chair-lift-2026.jpg" alt="Tybi lifts and tilts a red and white office chair in VRChat" loading="lazy" width="1920" height="1080">
  <figcaption>Tybi lifts a tracked chair, October 2026</figcaption>
</figure>

<figure class="signal">
  <img src="halloween-aerial-hoop-2026.jpg" alt="My Halloween avatar on a glowing crescent hoop suspended from a wooden gallows in VRChat" loading="lazy" width="2160" height="3840">
  <figcaption>Halloween aerial hoop, October 2026</figcaption>
</figure>

</div>
