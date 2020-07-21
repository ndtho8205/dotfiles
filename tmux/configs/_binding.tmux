# remap prefix from C-b to C-a
unbind C-b
set -g prefix C-a
bind-key C-a send-prefix

# reload configuration
bind r source-file ~/.tmux.conf \; display 'Reloaded!'

# toggle statusline
bind down set -q status off
bind up set -q status on

####################
# Pane
####################

# split pane
unbind '"'
unbind %
bind v split-window -h -c "#{pane_current_path}"
bind h split-window -v -c "#{pane_current_path}"

# use Alt-vim keys without prefix key to switch panes
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# resize pane
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

####################
# Window
####################

# create window with current path
bind c new-window -c "#{pane_current_path}"

# window navigation
bind -n M-[ previous-window
bind -n M-] next-window
