#!/usr/bin/env bash

# Launch the first two immediately in the background (&)
kitty --title "matrix_rain" -e unimatrix &
kitty --title "desktop_clock" -e peaclock &

# Stagger the next ones using backgrounded subshells
(sleep 0.1 && kitty --title "audio_viz" -e cava) &
(sleep 0.2 && kitty --title "sys_info" ) &
