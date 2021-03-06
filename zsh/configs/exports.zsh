# exports

export EDITOR='vim'
export VISUAL='code'

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

export PATH=$PATH:$DOTFILES/bin:$HOME/.local/bin

# android
if [ -d "/opt/android-sdk" ]; then
  export ANDROID_HOME=/opt/android-sdk
  export PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin
fi
if [ -d "/opt/android-ndk" ]; then
  export ANDROID_NDK=/opt/android-ndk
  export PATH=$PATH:$ANDROID_NDK
fi

# go
if [ -d "$HOME/ProgramFiles/go" ]; then
  export GOPATH=$HOME/gocode
  export GOROOT=$HOME/ProgramFiles/go
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi

# fzf
if [[ ! "$PATH" == *$DOTFILES/vim/pack/plugins/start/fzf/bin* ]]; then
  export FZF_PATH=$DOTFILES/vim/pack/plugins/start/fzf
  export PATH=$PATH:$FZF_PATH/bin
  source "$FZF_PATH/shell/completion.zsh" 2> /dev/null
  source "$FZF_PATH/shell/key-bindings.zsh"
  source "$DOTFILES/fzf/config.zsh"
fi

# cargo
if [[ -s $HOME/.cargo ]]; then
  export PATH=$HOME/.cargo/bin:$PATH
fi
