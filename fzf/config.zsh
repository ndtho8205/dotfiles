local interface_opts="--multi --no-mouse --cycle --keep-right"
local layout_opts="--min-height=40 --layout=reverse --border=horizontal --info=inline"
local preview_opts="--preview 'bash -- $DOTFILES/fzf/previewer {}' --preview-window=right:40%"
local bind_opts="--bind='F2:toggle-preview'"

export FZF_DEFAULT_OPTS="${interface_opts} ${layout_opts} ${preview_opts} ${bind_opts}"
