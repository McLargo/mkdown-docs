# Adaptive Bitrate Streaming

Adaptive Bitrate Streaming (ABS) is a streaming technique used to deliver video
to the users.

The video is encoded in multiple bitrates and resolutions in the server. Not
only user can switch between qualities manually. It allows the client who
dynamically choose the best quality based on the network conditions. If quality
is poor, low quality video is streamed. When network conditions improve, the
quality is increased dynamically.

## Fundamentals

Some of the key concepts in ABS are:

- **Chunk**: small segment of video file. Usually, between 2-10 seconds.
- **Manifest**: file that contains information about the video chunks.
- **Multiple bitrates**: video is encoded in multiple bitrates and resolutions.
- **Adaptive algorithm**: algorithm executed by the client video player that
  decides which quality to stream based on network conditions.

## Protocols

Some of the most popular protocols used for ABS are:

- **HTTP Live Streaming (HLS)**: Developed by Apple.
- **Dynamic Adaptive Streaming over HTTP (DASH)**: Developed by MPEG.
