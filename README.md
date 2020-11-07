# rice

### Dependencies<sup>1</sup>:
#### Important:
* **[`dwm`](https://github.com/keeganjk/dwm)**: Window manager
    + To use the bar script, copy `dwmstatus` to a location in `$PATH` (e.g. `~/.local/bin/`) as executable and have it run before/while starting `dwm` (e.g. add `dwmstatus &` to `xinitrc`).
#### Standard:
* **[`st`](https://github.com/keeganjk/st)**: Terminal emulator
* `dmenu`: Mainly used as application launcher
* `dunst` + `libnotify`: Notifications
* `slock`: Simple lockscreen
#### Recommended:
* `sxhkd`: Handles shortcuts, is easier to configure than manually adding them to `dwm`'s `config.h`
* `mpc`: Controller for `mpd`, used for shortcuts with `sxhkd`
* `xdotool`: Automates/simulates input, used for shortcuts with `sxhkd`
* `maim`: Screenshot utility, used for shortcuts with `sxhkd`
* `xsetroot`: For `dwm`'s statusbar (used by `dwmstatus` (see [dwm](https://github.com/keeganjk/dwm))
#### Optional:
* Music player: `ncmpcpp` (frontend) + `mpd` (backend)
* Text editor: `neovim`
* File manager: `ranger` (TUI), `pcmanfm` (GUI)
* `ibus`: For enabling additional keyboard layouts

#### <sup>1</sup> The items in `bold` should be downloaded and compiled as source in order to get the customized versions. The others use the default versions and/or a configuration file unrelated to the source code itself.

### Fonts
* GNU Unifont (text) [bitmap]
* Terminus (text) [bitmap]
        + Alternate bitmap font for screens on which Unifont is displayed improperly
* Siji (icons) [bitmap]

### Colorscheme
```
 *background: #09080d
 *foreground: #c7c7c7
 *color0:     #101010 
 *color1:     #8c6269 
 *color2:     #73785b
 *color3:     #857551
 *color4:     #4E5F7C
 *color5:     #6a5974
 *color6:     #628c85
 *color7:     #7a7a7a 
 *color8:     #52505B 
 *color9:     #a1777e
 *color10:    #859466
 *color11:    #a7945f
 *color12:    #667893
 *color13:    #8b719c
 *color14:    #77a19a
 *color15:    #939394
```
