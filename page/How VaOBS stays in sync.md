Playing the same stream in VRChat and OBS gives you two players with their own buffering and playback timing. A recording can have clean audio and still have it arrive ahead of what happened in-world.

VaOBS lines up its direct audio feed with the audio captured from VRChat. I use that captured sound as the reference for where the stream belongs in the recording.

## Finding the offset

VaOBS reads the media URL from the VRChat log and opens its own copy of the stream. That gives it the audio to record. The timing comes from comparing that feed with what VRChat is actually playing.

It keeps a history of both signals on a common timestamp grid. Normalized cross-correlation looks for the point where a recent passage from VRChat best matches the direct feed. The position of that match gives an estimate of how far ahead the direct feed is. VaOBS holds that audio in a buffer until it belongs in the output.

![A right-pointing arrow shows the direct feed moving later to match the VRChat capture.](/VaOBS/playback-offset.svg)

## Deciding when to trust a match

Silence carries no useful timing information. Repeated beats or phrases can produce several plausible matches. Picking the strongest peak immediately can line up the wrong passage.

The aligner checks both the strength of a match and how clearly it stands out from competing peaks. VaOBS checks that multiple audio windows give a consistent estimate before setting the initial delay or making a large adjustment. During a temporary loss of confidence it can hold the last reliable delay. If reliable alignment is lost, it mutes the direct output while recalibrating.

## Following drift

The offset can move as the two playback paths run. Once alignment is established, VaOBS tracks nearby changes, estimates the drift, and uses that estimate to adjust the buffered playback. Larger jumps go through the acquisition checks again.

[Alignment code](https://github.com/Hackebein/VaOBS/blob/v1.4.0/src/alignment.hpp) · [OBS integration](https://github.com/Hackebein/VaOBS/blob/v1.4.0/src/plugin.cpp)
