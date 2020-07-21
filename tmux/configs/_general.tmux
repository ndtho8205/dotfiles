# set the default $TERM to 256 color mode
set -g default-terminal "screen-256color"

# faster command sequences
set escape-time 10

# start counting windows and panes from 1
set -g base-index 1
setw -g pane-base-index 1

# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on

# do not rename windows automatically
set -g allow-rename off

# set maximum number of window history
set -g history-limit 10000
