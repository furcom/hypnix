![Preview](https://github.com/furcom/hypnix/blob/main/_/preview1.png) | ![Preview](https://github.com/furcom/hypnix/blob/main/_/preview2.png)
--- | ---
![Preview](https://github.com/furcom/hypnix/blob/main/_/preview3.png) | ![Preview](https://github.com/furcom/hypnix/blob/main/_/preview4.png)

---

# hypnix .dotfiles
This repository features a sleek, minimalistic Hyprland configuration with dynamic color schemes that adapt to your wallpaper. Enjoy a streamlined, personalized and colorful desktop experience with ease 🎨 

---

## 🛠️ Setup

1. Clone repository to `~/.config/`.
2. Inside repository path `~/.config/hypnix/` execute this (replace `XYZ` with your username):
```
find . -type f -exec sed -i 's/furcom/XYZ/g' {} +
```
3. Run this command in main hypnix path `~/.config/hypnix`:
```
sudo nixos-rebuild switch --flake ./#hypnix
```

---

## ℹ️ Information
As things keep constantly changing, some imformations and screenshots could be outdated here :)

1. Optimized on my `1920x1200` laptop. Things might look distorted on different resolutions.
2. You can open the hypnix settings menu by pressing `SUPER+H` or `SUPER+ESC`.
3. Switching wallpapers: Open the settings menu by pressing `SUPER+W` or `SUPER+SHIFT+W` to choose random wallpaper from wallpaper folder.
    - Wallpapers should be stored in `~/Pictures/Wallpapers`.

---

## ⌨️ Keybinds

`SUPER + <1-10>`
Go to workspace <1-10>

`SUPER + SHIFT + <1-10>`
Move focused window to workspace <1-10>

`SUPER + page up/down`
Go to Next/previous workspace

`SUPER + arrow keys`
Move window focus

`SUPER + SHIFT + arrow keys`
Move focused window

`SUPER`
Open/close special workspace

`SUPER + A`
Move focused window to special workspace

`SUPER + SHIFT + A`
Move focused window in special workspace to normal workspace

`SUPER + Print`
Screenshot screen

`SUPER + SHIFT + Print`
Screenshot selected window

`SUPER + CTRL + Print`
Screenshot selected screen area

`SUPER + F1`
Mute speaker

`SUPER + F2`
Volume down

`SUPER + F3`
Volume up

`SUPER + F4`
Mute microphone

`SUPER + F5`
Screen brightness down

`SUPER + F6`
Screen brightness up

`SUPER + Space`
Toggle keyboard brightness

`SUPER + Plus`
Maximize focused window

`SUPER + SHIFT + Plus`
Fullscreen focused window

`SUPER + Y`
Hide/Show top bar (waybar)

`SUPER + L`
Lock screen (hyprlock)

`SUPER + DEL`
Poweroff/Reboot/Logout/Suspend/Hibernate/Lock menu

`SUPER + Esc`
hypnix menu

`SUPER + H`
hypnix menu

`SUPER + S`
SSH menu

`SUPER + V`
Clipboard menu

`SUPER + W`
Wallpaper menu

`SUPER + SHIFT + W`
Switch to random wallpaper

`SUPER * B`
aunch browser (Google Chrome)

`SUPER + C`
Launch color picker

`SUPER + D`
Launch Discord

`SUPER + F`
Launch file browser

`SUPER + M`
Launch music player (Spotify)

`SUPER + P`
Launch password manager (Bitwarden)

---

[Hyp](https://hyprland.org)erland + [Nix](https://nixos.org)OS = hypnix 🌱
:-:
