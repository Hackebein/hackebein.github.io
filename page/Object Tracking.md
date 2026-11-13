Object Tracking uses SteamVR trackers and controllers to move objects on your VRChat avatar. I built it for live performances, where a physical pole, aerial hoop, or swinging bench needs to move the same way in VR as it does in the room.

The app is still in development. I'm working toward a Steam release.

[Wishlist on Steam](https://store.steampowered.com/app/3140770/) · [Performance demo](https://x.com/Hackebein/status/1817729114142343460)

The setup guide started as written instructions. I turned it into an [interactive walkthrough](https://object-tracking.hackebein.dev/#how) so you can compare each step with what you see in your own Unity project. I explain what led to that change in Why I made the Object Tracking guide interactive.

## History

### 2022: Pole Sync

After VRChat added OSC in 2022[^2], I strapped an ESP32 and a motion sensor to my pole. I wanted the pole in VRChat to spin at the same speed as the one in my room. I called it Pole Sync.

I first pictured a candy cane for Christmas. By December I was trying it on an X-Fly pole[^7]. It hangs from above and can swing, so spin alone wasn't enough. I could measure the rotation, but the sensor wasn't enough to tell me where the pole was in the room.

### 2023: The aerial hoop

If I could track a pole, why stop there? I ordered an aerial hoop. I'd only seen a handful of videos and figured that if dancing didn't work out, at least I'd have a swing.

I showed an early version to friends in April. By July[^3], I could show the hoop moving in two VRChat clients side by side. Setting up all the avatar parameters and animators by hand still took too long, so I started turning it into something other people could set up too.

[![Two VRChat windows showing my avatar beside a tracked aerial hoop](aerial-hoop-2023.jpg)](https://x.com/Hackebein/status/1678863438427090951)

### 2024: The beta and the swinging bench

I put out the first open beta in July[^4] and spent the rest of the year making it easier to set up. When winter came, I swapped the hoop for a swinging bench and brought it into VRChat[^5].

[![An avatar sitting on the tracked swinging bench in red light](swinging-bench-2024.jpg)](https://x.com/Hackebein/status/1868743681324597273)

### Waiting for native tracking

By the end of 2024, I was starting to wonder if VRChat would make my project redundant. I'd heard that items and accessories were coming. Then VRChat showed the [Camera Dolly and its OSC controls](https://ask.vrchat.com/t/developer-update-13-february-2025/41299) in early 2025. If I could upload my own item and move it over OSC the way you could move the camera, I could just put a tracker on a prop and let VRChat do the rest. That was what I'd wanted from the start.

I waited to see if those pieces would come together. The Dolly shipped, but the item controls I'd imagined never arrived. In early 2026, I picked Object Tracking back up.

### Back to work in 2026

While I was away from it, I heard about people charging around $30 a month for access to versions of the software I'd put on GitHub for free. That played a part in my decision to keep the new source code private for now. The earlier code is still on GitHub.

I also decided to make this a product I could support. I put together a [Steam store page](https://store.steampowered.com/app/3140770/) and shared a [new beta in July](https://bsky.app/profile/hackebe.in/post/3mr4mx5ynbc27). The Steam app is still in development. Today the setup needs SteamVR, a tracker or controller, and an avatar you can set up in Unity. The desktop app sends the motion over OSC, and the avatar needs the Object Tracking package to use it.

### From a prop to a room

In July I tried building a [small virtual studio](https://bsky.app/profile/hackebe.in/post/3mqsikhu4l22b). I posted the uncut test with the tracking glitches still in it. By November, I could track my room reliably enough to start playing with ideas like this.

<p><img class="tracked-room-photo" src="tracked-room-2026.jpg" alt="Unity scene view of my room layout, with brightly colored walls, a stone arch, and a crescent aerial hoop"></p>

My tracked room setup, November 2026. [Bluesky](https://bsky.app/profile/hackebe.in/post/3n2746nvnas2g) · [X](https://x.com/Hackebein/status/2121236139449385235)

### Tybi's video

Tybi made a video for Object Tracking. It still makes me laugh.

<blockquote class="twitter-video" data-dnt="true" data-theme="dark">
  <p><a href="https://x.com/Tybi_VRC/status/2105798842000015712">Watch Tybi's original post on X</a></p>
</blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

[^2]: VRChat Announcement, [VRChat OSC for Avatars](https://hello.vrchat.com/blog/vrchat-osc-for-avatars) at vrchat.com
[^3]: X Post, [Aerial Hoop Showoff](https://x.com/Hackebein/status/1678863438427090951) at x.com
[^4]: X Post, [Open Beta Release Announcement](https://x.com/Hackebein/status/1819711939246801397) at x.com
[^5]: X Post, [Swinging Bench Showoff](https://x.com/Hackebein/status/1868743681324597273) at x.com
[^7]: Product Page, [X-FLY](https://x-pole.co.uk/shop/aerial/x-fly/x-fly/) at x-pole-co.uk

## Motivation

I like being able to reach for a cup or pull up a chair in VRChat and find it where I left it in my room. The same idea works for a bottle, a camera on a gimbal, or a whole studio. Jangxx's VRC Tracked Objects[^8] is another take on it.

I hope many people will discover this tool and use it to create something creative. Don't forget to share your creations on my socials.

[^8]: Github Project, [VRC Tracked Objects](https://github.com/jangxx/VRC-Tracked-Objects) at github.com

## Resources

* [Current VPM listing](https://vpm.hackebein.dev/)
* [Original desktop app (archived)](https://github.com/Hackebein/Object-Tracking-App)
* [Original Unity package (archived)](https://github.com/Hackebein/Object-Tracking-Unitypackage)

## Gallery

<div class="object-tracking-gallery">

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

</div>
