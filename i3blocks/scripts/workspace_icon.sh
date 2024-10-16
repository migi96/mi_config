#!/bin/bash

# Get the focused window's class
window_class=$(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | awk -F' ' '{print $5}') WM_CLASS | awk -F'"' '{print $4}')

# Map window class to an icon
case "$window_class" in
    "Alacritty" | "URxvt" | "kitty" | "gnome-terminal")
        echo -e "\uf120"  # Terminal icon
        ;;
    "firefox" | "Chromium" | "Google-chrome")
        echo -e "\uf269"  # Web browser icon
        ;;
    "code-oss" | "Code" | "Sublime_text")
        echo -e "\uf121"  # Code icon
        ;;
    "Thunar" | "Nautilus" | "Dolphin" | "pcmanfm")
        echo -e "\uf07c"  # File manager icon
        ;;
    "Spotify")
        echo -e "\uf1bc"  # Music icon
        ;;
    "vlc" | "mpv")
        echo -e "\uf144"  # Media icon
        ;;
    *)
        echo -e "\uf2d2"  # Default icon (question mark)
        ;;
esac
