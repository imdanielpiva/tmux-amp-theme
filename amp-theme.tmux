#!/usr/bin/env bash
# Amp Theme for Tmux
# Based on the Amp Code website colors
# https://ampcode.com

# Color palette
dark_bg="#0F0F0F"
surface_bg="#161616"
elevated_bg="#1A1A1A"
element_bg="#1E1E1E"

fg_primary="#F2ECDD"
fg_muted="#B8AFA0"
fg_accent="#E7894C"

border_color="#262626"
accent_bright="#E7894C"

# Additional palette colors
color_blue="#6A9FCC"
color_cyan="#8FC4C4"
color_green="#7C9B96"
color_red="#D9634F"
color_yellow="#E3A25A"

# Set mode-keys
tmux set-option -g mode-keys vi

# Status bar colors
tmux set-option -g status-style "bg=$dark_bg,fg=$fg_primary"
tmux set-option -g status-position bottom
tmux set-option -g status-justify left
tmux set-option -g status-left-length 40
tmux set-option -g status-right-length 40

# Window list
tmux set-window-option -g window-status-style "bg=$surface_bg,fg=$fg_muted"
tmux set-window-option -g window-status-current-style "bg=$elevated_bg,fg=$fg_accent,bold"
tmux set-window-option -g window-status-separator " "

# Format window names
tmux set-window-option -g window-status-format " #I:#W "
tmux set-window-option -g window-status-current-format " #I:#W "

# Panes
tmux set-option -g pane-border-style "fg=$border_color"
tmux set-option -g pane-active-border-style "fg=$accent_bright"

# Messages
tmux set-option -g message-style "bg=$elevated_bg,fg=$fg_primary"
tmux set-option -g message-command-style "bg=$elevated_bg,fg=$fg_primary"

# Copy mode
tmux set-window-option -g copy-mode-match-style "bg=$color_yellow,fg=$dark_bg"
tmux set-window-option -g copy-mode-current-match-style "bg=$accent_bright,fg=$dark_bg"

# Command mode
tmux set-option -g command-style "bg=$elevated_bg,fg=$fg_primary"

# Status bar left (session info)
tmux set-option -g status-left "#[bg=$accent_bright,fg=$dark_bg,bold] #S #[bg=$surface_bg,fg=$fg_primary]"

# Status bar right (time & date)
tmux set-option -g status-right "#[bg=$surface_bg,fg=$fg_muted]%H:%M #[bg=$accent_bright,fg=$dark_bg,bold] %a %d %b "

# Selection colors in copy mode
tmux set-option -g @copy-mode-cursor-style "bg=$accent_bright,fg=$dark_bg"
