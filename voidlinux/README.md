# PERSONAL SETTINGS VOIDLINUX

## Install

Enable repositaries:

```bash
# xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
```

Software:

```bash
# xbps-install elogind dbus xorg git nodejs yarn python3-pip curl compton
\ firefox xfce4-terminal dmenu herbstluftwm ranger fish-shell sudo

# ln -s /etc/sv/dbus /var/service/
```

## ERRORS FIXED

### Don't sync time zone

```bash
sudo ntpd
```

### Firefox font error

```bash
$ sudo xbps-install freefont-ttf

# ln -s /usr/share/fontconfig/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d/
# ln -s /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/
# ln -s /usr/share/fontconfig/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d/
# ln -s /usr/share/fontconfig/conf.avail/50-user.conf /etc/fonts/conf.d/
# ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
```

Create file `~/.config/fontconfig/fonts.conf` and add:

```xml
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
 <match target="font">
  <edit mode="assign" name="antialias">
   <bool>true</bool>
  </edit>
  <edit mode="assign" name="hinting">
   <bool>true</bool>
  </edit>
  <edit mode="assign" name="autohint">
   <bool>false</bool>
  </edit>
  <edit mode="assign" name="hintstyle">
   <const>hintslight</const>
  </edit>
  <edit mode="assign" name="rgba">
   <const>rgb</const>
  </edit>
  <edit mode="assign" name="lcdfilter">
   <const>lcddefault</const>
  </edit>
  <edit mode="assign" name="embeddedbitmap">
   <bool>false</bool>
  </edit>
 </match>
</fontconfig>
```

Add this to `~/.Xresources`:

```bash
Xft.antialias:1
Xft.hinting:1
Xft.autohint:0
Xft.hintstyle:hintslight
Xft.rgba:rgb
Xft.lcdfilter:lcddefault
```

On firefox write `about:config` and search `gfx.font_rendering.fontconfig.max_generic_substitutions` and set the value to `127`.
