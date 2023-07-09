# MAIN

#### Void

```
# xbps-install sudo rofi wezterm redshift-gtk devilspie fish-shell volumeicon alsa-utils pulseaudio
```

#### Debian

```
# apt install sudo rofi xfce4-terminal redshift-gtk devilspie fish volumeicon alsa-utils pulseaudio
```

### CONFIG

- Neovim -> [Link](./config/nvim/README.md)

### Icons and Theme

Create __.icons__ and __.themes__ directory on [_home_](_home_)

Icons:

- Newaita ([Link](https://github.com/cbrnix/Newaita))

Theme:

- Desert ([Link](https://www.gnome-look.org/p/1449286/))

### Devilspie
```
mkdir .devilspie

Example:

--- tym.ds ---

(if (is (application_name) "tym")
    (begin 
        (if (is (window_role) "")
            (begin 
                (undecorate)
            )
        )
    )
)
```

More info([devilspie](https://help.ubuntu.com/community/Devilspie))

### Install Neovim 5

```bash
sudo xbps-install cmake ninja base-devel unzip
git clone https://github.com/neovim/neovim.git
make clean
sudo make install

# Uninstall
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```

### FIREFOX DISABLE ALT MENU

Type `about:config` and find `ui.key.menuAccessKeyFocuses`, change __true__ value to __false__.
