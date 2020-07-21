# set the default $TERM to 256 color mode
set -g default-terminal "screen-256color"

# faster command sequences
set -sg escape-time 0

# start counting windows and panes from 1
set -g base-index 1
setw -g pane-base-index 1

# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on

# do not rename windows automatically
set -g allow-rename off

# increase scrollback buffer size
set -g history-limit 10000

# use vi key bindings in copy mode
setw -g mode-keys vi

# tmux messages are displayed for 2 seconds
set -g display-time 2000

# refresh 'status-left' and 'status-right' more often
set -g status-interval 5

# enable focus events
set -g focus-events on
