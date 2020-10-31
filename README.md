# rice

### Dependencies<sup>1</sup>
#### Software
* Window manager: **[dwm](https://github.com/keeganjk/dwm)**
    + To use the bar script, copy `dwmstatus` to a location in `$PATH` (e.g. `~/.local/bin/`) as executable and have it run before/while starting `dwm` (e.g. add `dwmstatus &` to `xinitrc`).
* Terminal: **[st](https://github.com/keeganjk/st)**
* Dynamic menu: `dmenu`
* Music player: `ncmpcpp` + `mpd`
* Shortcut handler: `sxhkd`
* Screen locker: `slock`
* Text editor: `neovim`
* File manager: `ranger` and sometimes `pcmanfm`
#### Sub-Dependencies
* `mpc`: For handling `mpd` (used by `sxhkd`)
* `xdotool`: For automating clicks via keyboard shortcuts (used by `sxhkd`)
* `maim`: For screenshots (used by `sxhkd`)
* `xsetroot`: For `dwm`'s statusbar (used by `dwmstatus` (see [dwm](https://github.com/keeganjk/dwm))
#### Additional software
* `ibus`: For enabling additional keyboard layouts
* `dunst`: Notification daemon

> <sup>1</sup>The links in **bold** should be downloaded and compiled as source in order to get the customized versions. The others use the default versions and/or a configuration file unrelated to the source code itself.

### Fonts
* GNU Unifont (text) [bitmap]
* Terminus (text) [bitmap]
        + Alternate bitmap font for screens on which Unifont is displayed improperly
* Siji (icons) [bitmap]

### Colorscheme
```
"#101010", // "black"
"#8c6269", // red
"#73785b", // green
"#857551", // yellow
"#4E5F7C", // blue
"#6a5974", // magenta
"#628c85", // cyan
"#929c9c", // light grey

"#52505B", // grey
"#a1777e", // light red
"#859466", // light green
"#a7945f", // light yellow
"#667893", // light blue
"#8b719c", // light magenta
"#77a19a", // light cyan
"#939394", // "white"

"#667893", // cursor
"#938166", // rev cursor
"#09080d", // background
"#c7c7c7", // foreground
```
