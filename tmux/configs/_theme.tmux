# panes
set -g pane-border-style fg=brightblack
set -g pane-active-border-style fg=brightwhite

# status bar
set -g status-justify centre
set -g status-left-length 10
set -g status-left '#[fg=white] #S'
set -g status-right-length 20
set -g status-right '#[fg=white]#{?client_prefix,^A,%a, %d %b %H:%M}'
set -g status-position bottom
set -g status-style fg=yellow,dim

# windows
set -g window-status-format '#[fg=white] #I. #W#F '
set -g window-status-current-format '#[bg=blue,fg=black] #I. #W#F '

# messages
set -g message-style fg=black,bg=blue
