# MAIN


### Install Neovim 5

```bash
sudo xbps-insatall cmake ninja base-devel unzip
git clone https://github.com/neovim/neovim.git
make clean
sudo make install

# Uninstall
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```

### FIREFOX DISABLE ALT MENU

Type `about:config` and find `ui.key.menuAccessKeyFocuses`, change __true__ value to __false__.
