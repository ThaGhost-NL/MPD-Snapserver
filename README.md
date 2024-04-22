# Snapcast-MPD
[aarch64-badge]: https://img.shields.io/badge/aarch64-yes-green.svg?style=for-the-badge
[amd64-badge]: https://img.shields.io/badge/amd64-yes-green.svg?style=for-the-badge
[armhf-badge]: https://img.shields.io/badge/armhf-yes-green.svg?style=for-the-badge
[armv7-badge]: https://img.shields.io/badge/armv7-yes-green.svg?style=for-the-badge
[i386-badge]: https://img.shields.io/badge/i386-yes-green.svg?style=for-the-badge
[stage-badge]: https://img.shields.io/badge/Addon%20stage-stable-green.svg?style=for-the-badge
[install-badge]: https://img.shields.io/badge/Install%20on%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[donation-badge]: https://img.shields.io/badge/Buy%20me%20a%20coffee-%23d32f2f?logo=buy-me-a-coffee&style=for-the-badge&logoColor=white
[donation-url]: https://buymeacoffee.com/thaghostnl
[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[install-url]: https://my.home-assistant.io/redirect/supervisor_addon?addon=243ffc37_mpd
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FThaGhostNL%2FHassio-Addons

![Addon Stage][stage-badge]
![Supports aarch64 Architecture][aarch64-badge]
![Supports amd64 Architecture][amd64-badge]
![Supports armhf Architecture][armhf-badge]
![Supports armv7 Architecture][armv7-badge]
![Supports i386 Architecture][i386-badge]

[![Add repository on my Home Assistant][repository-badge]][repository-url]
[![Install on my Home Assistant][install-badge]][install-url]
[![Donate][donation-badge]][donation-url]

## Audio player and Multi Room Audio for Home Assistant

This addon for hass.io adds audio playing capability to the host and acts as a Multi Room Audio server/client.
Snapcast Client uses the build-in audio host (Alsa/Pulse) and allows you to play audio on speakers connected via the 3.5mm jack or HDMI.
Snapcast-MPD is built with the following programs:

- [MPD](https://www.musicpd.org/)
- [ympd](https://ympd.org/)
- [Snapcast Client](https://github.com/badaix/snapcast)
- [Snapcast Server](https://github.com/badaix/snapcast)

# Configuration

The configuration is still under heavy changes, and will be available soon!

The local media can be stored on /share (which allow an access through the samba addon). By default the directory for media is /share/mpd/media. Since /share is read-only, the directory must be created from another addon or directly on the host.

### Ports in use:
- 1704: Snapcast websocket for Client communication
- 1705: Stream media player control, for example: volume and mute
- 1780: Snapcast jsonRPC API
- 4953: UDP Broadcast, used by clients who broadcast their audio
- 6600: MPD Communication, used by MPD clients
- 6680: YMPD Web browser `(Hass.io Ingress)`
