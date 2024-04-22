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
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FThaGhostNL%2FSnapcast-MPD

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

Librespot creates a dedicated Spotify Audio Stream via the Snapcast-Server. More details about Librespot and configuration options can be found in [DOCS.md](https://github.com/ThaGhostNL/Snapcast-MPD/DOCS.md)

#### Snapcast-MPD uses the following programs:

- [MPD](https://www.musicpd.org/)
- [ympd](https://ympd.org/)
- [Snapcast Client](https://github.com/badaix/snapcast)
- [Snapcast Server](https://github.com/badaix/snapcast)
- [librespot](https://github.com/librespot-org/librespot) **

** _librespot only works with Spotify Premium._

# Configuration

The configuration is still under heavy changes, and will be available soon!

MPD uses by default the following directories to store databases and configurations
- /share/mpd/.data/mpd.db
- /share/mpd/.data/state **
- /share/mpd/.config/mpd.conf

Local media can also be stored on /share (which allow an access through the samba addon). The default directories for media and playlists are:
- /share/mpd/music
- /share/mpd/playlists

### Ports in use:
- 1704: Snapcast websocket used by Snapcast Clients
- 1705: Stream media player control, for example to set the volume of a Group, Client(s) or Client(s) inside a Group
- 1780: Snapcast jsonRPC API
- 4953: UDP Broadcast, used by Snapcast Clients who broadcast their audio them self
- 6600: MPD Communication, used by MPD clients
- 6680: YMPD Web browser to manage playlists and MPD media player `(Hass.io Ingress)`
