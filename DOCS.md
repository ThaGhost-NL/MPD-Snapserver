# Configuration

```yaml
snapcast_custom_config: /share/snapcast/.config/snapserver.conf
mpd_custom_config: /share/mpd/.config/mpd.conf
client_device_id: huiskamer_speakers
```

### `snapcast_custom_config`

Loads the custom snapserver config file. If left blank the stock config ```/etc/snapserver.conf``` wil be used.

### `mpd_custom_config`

Loads the custom Music Player Daemon config file. If left blank the stock config ```/etc/mpd.conf``` wil be used.

### `client_device_id` (Requierd)

Gives a readeble name to the SnapClient HOST ID  

# Troubleshooting

### `RTIOThread could not get realtime scheduling, continuing anyway: sched_setscheduler`

This error is shown on any none-glibc system like alpine linux is. MPD should work without it.
More see here: [MPD Issue](https://github.com/MusicPlayerDaemon/MPD/issues/218)

### `Failed to open '/share/mpd/.data/mpd.db': No such file or directory`

This error is shown on the first start, when no database exists. It will be there on the second run.

# MPD

To connect from Home Assistant use the following configuration:

```yaml
media_player:
  - platform: mpd
    host: local-snapcast-mpd-server
    port: 6600
```
