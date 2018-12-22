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

load_configs() {
  _dir="$1"

  if [ -d "$_dir" ]; then
    for config in "$_dir"/**/*.zsh; do
      [ -e "${config}" ] || continue
      source "${config}"
    done
  fi
}

load_configs "${ZSH}/configs"
load_configs "${ZSH_CUSTOM}"




#initialize Z (https://github.com/rupa/z)
. /home/ndtho8205/Documents/ProgramFiles/z/z.sh

