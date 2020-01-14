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

load_zsh_functions() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    fpath=($1 $fpath)
    autoload -Uz $fpath[1]/*(.:t)
  fi
}

load_zsh_functions "${ZSH_CUSTOM}/functions"
# TODO: compinit 2nd -> slow
compinit

# load prezto
if [[ -s "${ZSH}/prezto/init.zsh" ]]; then
  source "${ZSH}/prezto/init.zsh"
fi

# load zsh configs
load_zsh_files "${ZSH}/configs" ".zsh"
load_zsh_files "${ZSH}/plugins" ".plugin.zsh"

#FIXME: load custom completion script without call compinit twice
load_zsh_functions "${ZSH}/functions"


load_zsh_files "${ZSH_CUSTOM}" ".zsh"
load_zsh_files "${ZSH_CUSTOM}/plugins" ".plugin.zsh"
load_zsh_functions "${ZSH_CUSTOM}/functions"
