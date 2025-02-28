# mister-duke3d

## Setup

* Add the following to `/media/fat/downloader.ini` on your MiSTer:

```ini
[jsmolina/mister-duke3d]
db_url = https://raw.githubusercontent.com/jsmolina/MiSTer-duke3d/db/db.json.zip
```

* Run `update` or `update_all` to install `Duke3D`
* Copy your `Duke3d.grp`, `game.con`, `user.con`, `defs.con` to `/media/fat/Games/Duke3D`

## Soundfont Configuration

* For music, copy a soundfont `/media/fat/Games/Duke3D`. By default it looks for
 `SC55.sf2`
* Configure it in `/media/fat/Scripts/Duke3D.ini`, eg:

```bash
export SDL_SOUNDFONTS=/media/fat/Games/Duke3D/<your soundfont file name here>
```

* To disable soundfonts set `SDL_FORCE_SOUNDFONTS` to `0` in `/media/fat/Scripts/Duke3D.ini`, eg

```bash
export SDL_FORCE_SOUNDFONTS=0
```
