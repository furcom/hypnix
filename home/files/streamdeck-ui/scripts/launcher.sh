#!/usr/bin/env bash

# streamdeck-helper.sh – Modular focus and launcher helper for Hyprland
# Usage: ./streamdeck-helper.sh --cmd <program_name> --class <class_name>

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --cmd) PROGRAM="$2"; shift 2 ;;
        --class) CLASSNAME="$2"; shift 2 ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
done

# Validate input
if [[ -z "$PROGRAM" || -z "$CLASSNAME" ]]; then
    echo "Usage: $0 --cmd <program_name> --class <class_name>"
    exit 1
fi

# Check if a window with class $CLASSNAME exists
if hyprctl clients | awk '/class:/ {print $2}' | grep -q "^$CLASSNAME$"; then
    # Window exists → focus it
    hyprctl dispatch focuswindow class:"$CLASSNAME"
else
    # Window doesn't exist → launch the program
    "$PROGRAM" &
    sleep 1
    hyprctl dispatch focuswindow class:"$CLASSNAME"
fi
