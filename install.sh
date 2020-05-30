#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export DOTFILES="$(
  cd "$(dirname "$0")"
  pwd -P
)"

ta_normal=''
ta_standout=''
fg_blue='' fg_red='' fg_green='' fg_yellow=''

ncolors=$(command -v tput >/dev/null && tput colors)
if test -n "$ncolors" && test "$ncolors" -ge 8; then
  ta_normal="$(tput sgr0)"
  ta_standout="$(tput smso)"

  fg_blue="$(tput setaf 4)"
  fg_red="$(tput setaf 1)"
  fg_green="$(tput setaf 2)"
  fg_yellow="$(tput setaf 3)"
fi

info() {
  printf "\r${ta_standout}${fg_blue} INFO ${ta_normal} %s\n" "$1"
}

success() {
  printf "\r${ta_standout}${fg_green} DONE ${ta_normal} %s\n" "$1"
}

fail() {
  printf "\r${ta_standout}${fg_red} FAIL ${ta_normal} %s\n" "$1"
}

ask() {
  printf "\n${ta_standout}${fg_yellow}  ??  ${ta_normal} %s\n" "$1"
}

make_link() {
  local src=$1 dst=$2

  local overwrite='' backup='' skip=''
  local action=''

  if [ -f "$dst" ] || [ -d "$dst" ] || [ -L "$dst" ]; then

    if [ "$overwrite_all" == "false" ] && [ "$backup_all" == "false" ] && [ "$skip_all" == "false" ]; then
      local currentSrc="$(readlink $dst)"

      if [ "$currentSrc" == "$src" ]; then
        skip=true
      else
        ask \
          "File already exists: $dst ($(basename "$src")), what do you want to do?\n\
          [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
        read -n 1 action

        case "$action" in
        o)
          overwrite=true
          ;;
        O)
          overwrite_all=true
          ;;
        b)
          backup=true
          ;;
        B)
          backup_all=true
          ;;
        s)
          skip=true
          ;;
        S)
          skip_all=true
          ;;
        *) ;;

        esac
      fi
    fi

    overwrite=${overwrite:-$overwrite_all}
    backup=${backup:-$backup_all}
    skip=${skip:-$skip_all}

    if [ "$overwrite" == "true" ]; then
      rm -rf "$dst"
      success "removed $dst"
    fi

    if [ "$backup" == "true" ]; then
      mv "$dst" "${dst}.backup"
      success "moved $dst to ${dst}.backup"
    fi

    if [ "$skip" == "true" ]; then
      success "skipped $src"
    fi
  fi

  if [ "$skip" != "true" ]; then # "false" or empty
    ln -s "$1" "$2"
    success "linked $1 to $2"
  fi
}

install_dotfiles() {
  info 'Installing dotfiles'

  local overwrite_all=false backup_all=false skip_all=false

  if [[ ! (-f "$HOME/.dotfiles" || -d "$HOME/.dotfiles") || ("$DOTFILES" != "$HOME/.dotfiles") ]]; then
    make_link "$DOTFILES" "$HOME/.dotfiles"
  fi

  for src in $(find -H "$DOTFILES" -maxdepth 2 -name '*.symlink' -not -path '*.git*'); do
    dst="$HOME/.$(basename "${src%.*}")"
    make_link "$src" "$dst"
  done

  make_link "$DOTFILES/vim" "$HOME/.vim"
  make_link "$DOTFILES/ssh/config" "$HOME/.ssh/config"
}

install_dotfiles

echo ''
echo '  All installed!'
