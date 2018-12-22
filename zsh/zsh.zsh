export ZSH="${DOTFILES}/zsh"
export ZSH_CUSTOM="${ZSH}/custom"

# set cache dir
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

# set custom dir
if [[ -z "$ZSH_CUSTOM" ]]; then
    ZSH_CUSTOM="$ZSH/custom"
fi

# load prezto
if [[ -s "${ZSH}/prezto/init.zsh" ]]; then
  source "${ZSH}/prezto/init.zsh"
fi

# add function path and load all functions
fpath=($ZSH/functions $fpath)
autoload -U compaudit compinit

# load config files
load_zsh_files() {
  _dir="$1"
  _pattern="$2"

  if [ -d "$_dir" ]; then
    for config in "$_dir"/**/*"${_pattern}"; do
      [ -e "${config}" ] || continue
      source "${config}"
    done
  fi
}

load_zsh_files "${ZSH}/configs" ".zsh"
load_zsh_files "${ZSH_CUSTOM}" ".zsh"

# load plugins
load_zsh_files "${ZSH}/plugins" ".plugin.zsh"
load_zsh_files "${ZSH_CUSTOM}/plugins" ".plugin.zsh"
