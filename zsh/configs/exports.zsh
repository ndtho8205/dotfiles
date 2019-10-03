# exports

export EDITOR='vim'
export VISUAL='code'

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

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
if [ -d "/opt/go" ]; then
  export GOPATH=$HOME/gocode
  export GOROOT=/opt/go
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi

# ruby
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
fi

# npm
if type "npm" > /dev/null; then
  export NPM_GLOBAL=${HOME}/.npm-global
  export NODE_PATH=$NPM_GLOBAL/lib/node_modules
  export PATH=$NPM_GLOBAL/bin:$PATH
  export NPM_CONFIG_PREFIX=$NPM_GLOBAL
fi
