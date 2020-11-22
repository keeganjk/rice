# rice
Documented for Arch Linux and derivatives

### Software I Use That is of Note<sup>1</sup>
* **[`dwm`](https://github.com/keeganjk/dwm)**: Window manager
* **[`st`](https://github.com/keeganjk/st)**: Terminal emulator
* **[`dmenu`](https://github.com/keeganjk/dmenu)**: Dynamic menu
* `dunst` + `libnotify`: Notifications
* `slock`: Simple lockscreen
* `zsh`: Shell
    + Install the `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins, they should be available in the OS's repositories
* `xdg-user-dirs`: For managing custom directories
* `sxhkd`: Handles shortcuts, is easier to configure than manually adding them to `dwm`'s `config.h`
* `mpc`: Controller for `mpd`, used for shortcuts with `sxhkd`
* `mpdscribble` [AUR]: \[last.fm] Scrobbler for `mpd`
* `xdotool` [AUR]: Automates/simulates input, used for shortcuts with `sxhkd`
* `maim`: Screenshot utility, used for shortcuts with `sxhkd`
* `xorg-xsetroot`: For `dwm`'s statusbar (used by `dwmstatus` (see [dwm](https://github.com/keeganjk/dwm))
* `xclip`: For copying text (in the terminal emulator)
* Music player: `ncmpcpp` (frontend) + `mpd` (backend)
* Text editor: `neovim`, **[`vim-plug`](https://github.com/junegunn/vim-plug)** (plugin manager for `vim`/`neovim`)
* File manager: ~~`ranger`~~ trying `nnn` (TUI), `pcmanfm` (GUI)
* Image viewer: `sxiv`
* `ibus`: For enabling additional keyboard layouts
    + `ibus-mozc` [AUR] for Japanese input
* LaTeX: `texlive-most`, `texlive-lang`, `biber`
* `xorg-server`: Xorg
* `xf86-video-intel` + `mesa` for Intel or `xf86-video-amdgpu` + `mesa` for AMD
* `zathura` + `zathura-djvu` + `zathura-pdf-mupdf`: Document viewer

#### <sup>1</sup> The items in `bold` should be downloaded and compiled as source in order to get the customized versions. The others use the default versions and/or a configuration file unrelated to the source code itself.

### Fonts
* `envypn-powerline-git` (text) [bitmap]
* GNU Unifont (text) [bitmap]
    + Has CJK characters
* Siji (icons) [bitmap]

### Commands to run to get everything working correctly
```
chsh -s $(which zsh) $(whoami) # Changes default shell to zsh
xdg-user-dirs-update # Sets default user directories
```

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

## Naming files
### Music files
#### Formatting
##### Directory structure
```
Music/
    Artists/
        _Collaboration/
        _Non-Latin/
        0-9/
        A/
        B/
        C/
        ...
    Soundtracks/
```
###### Artists
* If an artist name is the artist's actual name, put it in the format `Surname,-GivenName`; e.g. "John Smith" would be `Smith,-John`
    + Note: If a band's name resembles a person's name but is not actually the name/pseudonym of the artist, do not use `Surname,-GivenName`
* If the artist name has an article (e.g. in English, "a", "an", "the"), move it to the end of the artist's name, separated by a comma; e.g. "The Band" would be `Band,-The`
* Replaces any spaces ` `  with hyphens `-`
* Put these in the `Artists/` directory under the correct subdirectory that the artist's \[file]name begins with
* If there is a collaboration artist, create a symlink to it in the direcories of each artist involved
* If there is an artist whose name begins with a non-Latin character, create a symlink of the translated/transliterated name in the directory of the letter that it begins with
###### Albums
* Put these in the directory of the artist it is associated with in the format of `ReleaseYear~AlbumName`; e.g. for an album called "The Album" released in 1999, do `1999~The-Album`
###### Soundtracks
* These are put in a category separate from typical albums from artists. Put them in the `Sountracks/` directory in the format `ReleaseYear~SoundtrackName`, for example "Something OST" released in 1999 would be `1999~Something-OST`
#### Replacements<sup>2</sup>:
* Replace slashes, leading and trailing dots, and control characters `[<>:"\?\*\|]` with `_`
* Remove leading and trailing whitespace
* Replace all spaces with `-`

#### <sup>2</sup> See the `beets` configuration's `config.yaml`
