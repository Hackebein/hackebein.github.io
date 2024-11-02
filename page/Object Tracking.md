Track your real objects and track them in VRChat. All SteamVR/OpenVR supported trackers are supported. [Demo](https://x.com/Hackebein/status/1817729114142343460)

Needs App. Available on:

* [Steam](https://store.steampowered.com/app/3140770) (soon[^1])
* [Github](https://github.com/Hackebein/Object-Tracking-App/releases)

[^1]: beta keys can be requested via support

Hackebein's VPM Listing: [vpm.hackebein.dev](https://vpm.hackebein.dev)

## Support

* [Hackebein's Research Lab](https://discord.gg/AqCwGqqQmW) at discord.gg

## Project Overview

[Task Overview](https://github.com/users/Hackebein/projects/4)

## History

On February 16, 2022, VRChat announced support for OSC[^2]. Four months later, I assembled an ESP32 integrated with an IMU sensor and attached it to my pole to monitor its rotation speed. My objective was to transmit this data to my PC and relay it through OSC into VRChat. This would enable the visualization of rotation speed and trigger corresponding effects based on that speed. Initially, I envisioned using a candy cane as a festive Christmas pole. However, by December 2022, the concept had evolved to accommodate a different type of pole from the same manufacturer. The "X-Fly"[^5] pole features a top connected with a rope or chain, while the bottom remains loose. The primary challenge was determining the pole's angle and transmitting this information. I tried to locate the pole within the room without success while using an IMU. Up to this point, the project was known as "Pole Sync".

I desired a more versatile system that could be utilized with a wide variety of objects. What is the limit? This idea quickly expanded to include tracking an aerial hoop from the same manufacturer as my pole. At the time, I had only seen a handful of videos showcasing its use. It didn't appear significantly more demanding than pole dancing. I considered using it as a swing if dancing didn't work out. After determining my ring size, I placed an order. In early 2023, a "huge metal ring", also known as an aerial hoop, arrived at my doorstep.

In April 2023, I presented a proof of concept (POC) to some friends and began dancing with it in VRChat. By July 2023[^3], I was demonstrating a low-latency version with support for variable bit usage. However, manually crafting every parameter and relying on handcrafted animators proved to be cumbersome. Consequently, I started developing it into a tool that could be accessible to everyone. In July 2024[^4], the open beta release was launched.

[^2]: VRChat Announcement, [VRChat OSC for Avatars](https://hello.vrchat.com/blog/vrchat-osc-for-avatars) at vrchat.com  
[^3]: X Post, [First Aerial Hoop dancer in @VRChat soon](https://x.com/Hackebein/status/1678863438427090951) at x.com  
[^4]: X Post, [Public release announcement](https://x.com/Hackebein/status/1819711939246801397) at x.com
[^5]: Product Page, [X-FLY](https://x-pole.co.uk/shop/aerial/x-fly/x-fly/) at x-pole-co.uk

## Motivation

Being immersed

## Gallery

![Vive tracker laying on hand in VRChat](tracker_laying_on_hand.jpg)
