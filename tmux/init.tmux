TMUX_DIR="${DOTFILES}/tmux"

source ${TMUX_DIR}/configs/_general.tmux
source ${TMUX_DIR}/configs/_binding.tmux
source ${TMUX_DIR}/configs/_mouse.tmux
source ${TMUX_DIR}/configs/_plugins.tmux
source ${TMUX_DIR}/configs/_theme.tmux

# if '[ -f ~/.tmux.conf.local ]' 'source ~/.tmux.conf.local'

run ${TMUX_DIR}/plugins/tpm/bin/install_plugins
run ${TMUX_DIR}/plugins/tpm/tpm
