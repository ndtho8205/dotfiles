# remap prefix from C-b to C-a
unbind C-b
set -g prefix C-a
bind-key C-a send-prefix

# reload configuration
bind r source-file ~/.tmux.conf \; display 'Reloaded!'

# toggle statusline
bind down set -q status off
bind up set -q status on

# enter copy and scroll mode
bind -n M-/ copy-mode

bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -in -selection clipboard"
bind -T copy-mode-vi MouseDragEnd1Pane send -X copy-pipe-and-cancel "xclip -in -selection clipboard"
####################
# Pane
####################

# split pane
unbind '"'
unbind %
bind v split-window -h -c "#{pane_current_path}"
bind h split-window -v -c "#{pane_current_path}"

# close pane
bind -n M-w confirm-before "kill-pane"

# switch between panes
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# resize pane
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# swap panes
bind -n "M-H" run-shell 'old=`tmux display -p "#{pane_index}"`; tmux select-pane -L; tmux swap-pane -t $old'
bind -n "M-J" run-shell 'old=`tmux display -p "#{pane_index}"`; tmux select-pane -D; tmux swap-pane -t $old'
bind -n "M-K" run-shell 'old=`tmux display -p "#{pane_index}"`; tmux select-pane -U; tmux swap-pane -t $old'
bind -n "M-L" run-shell 'old=`tmux display -p "#{pane_index}"`; tmux select-pane -R; tmux swap-pane -t $old'

####################
# Window
####################

# create window with current path
bind -n M-c new-window -c "#{pane_current_path}"

# close window
bind -n M-W confirm-before "kill-window"

# rename window
bind -n M-r command-prompt -I "#W" "rename-window '%%'"

# switch to next/prev windows
bind -n M-[ previous-window
bind -n M-] next-window

# switch windows
bind -n M-1 select-window -t :1
bind -n M-2 select-window -t :2
bind -n M-3 select-window -t :3
bind -n M-4 select-window -t :4
bind -n M-5 select-window -t :5
bind -n M-6 select-window -t :6
bind -n M-7 select-window -t :7
bind -n M-8 select-window -t :8
bind -n M-9 select-window -t :9

# swap windows
bind -n M-, swap-window -t -1
bind -n M-. swap-window -t +1
