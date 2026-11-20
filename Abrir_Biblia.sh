#!/bin/bash
cd "$(dirname "$0")"
chmod +x ./motor.biblia

if [ -t 0 ]; then
    ./motor.biblia
elif command -v gnome-terminal >/dev/null 2>&1; then
    gnome-terminal --geometry=96x32 -- ./motor.biblia
elif command -v x-terminal-emulator >/dev/null 2>&1; then
    x-terminal-emulator -e ./motor.biblia
elif command -v konsole >/dev/null 2>&1; then
    konsole -e ./motor.biblia
elif command -v xfce4-terminal >/dev/null 2>&1; then
    xfce4-terminal -e ./motor.biblia
else
    ./motor.biblia
fi
