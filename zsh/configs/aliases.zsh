# aliases

# cd
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ubuntu
alias mkdir='mkdir -p'
alias ai='sudo apt install'
alias au='sudo apt update'
alias aug='sudo apt upgrade'
alias clean='sudo apt autoremove && sudo apt autoremove --purge && sudo apt clean && sudo apt autoclean'

# shortcuts
alias e='$EDITOR'
alias v='$VISUAL'
alias ez='$EDITOR ~/.zshrc'
alias ev='$EDITOR ~/.vimrc'
alias x+='chmod +x'

# cat
if type "bat" > /dev/null; then
  alias cat='bat --theme="OneHalfDark" --style="numbers,changes,header,grid" --italic-text=always'
elif type "pygmentize" > dev/null; then
  alias cat='pygmentize -O style=native -f console256 -g'
fi

# bundler
if type "bundle" > /dev/null; then
  alias be='bundle exec'
  alias bej='bundle exec jekyll serve'
fi

# git
alias glconfig='git config user.name "$GL_NAME" && git config user.email $GL_EMAIL'
alias bbconfig='git config user.name "$BB_NAME" && git config user.email $BB_EMAIL'

# mysql
if type "mysql" > /dev/null; then
  alias mysql-start='sudo systemctl start mysql.service'
  alias mysql-stop='sudo systemctl stop mysql.service'
  alias mysql-restart='sudo systemctl restart mysql.service'
  alias mysql-status='sudo systemctl status mysql.service'
fi

# mongodb
if type "mongod" > /dev/null; then
  alias mongod-start='sudo service mongod start'
  alias mongod-stop='sudo service mongod stop'
  alias mongod-restart='sudo service mongod restart'
  alias mongod-status='sudo service mongod status'
fi

# docker
if type "docker" > /dev/null; then
  alias docker-start='sudo systemctl start docker'
  alias docker-stop='sudo systemctl stop docker'
  alias docker-restart='sudo systemctl restart docker'
  alias docker-status='sudo systemctl status docker'

  alias docker-kill-all='docker kill $(docker ps -q)'
  alias docker-clean-container='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
  alias docker-del-all-images='docker rmi --force $(docker images -q)'
  alias docker-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
  alias dockercleanc='docker-kill-all || true && docker-clean-container'
  alias dockercleani='docker-del-all-images || true && docker-clean-images || true && docker-del-all-images'
  alias dockerclean='dockercleanc || true && dockercleani'

  alias dockly-clean='docker container kill dockly || true && docker rm dockly'
  alias dockly-pull='docker pull lirantal/dockly' 
  alias dockly-run='docker run -it --name dockly -v /var/run/docker.sock:/var/run/docker.sock lirantal/dockly'
  alias dockly='dockly-clean || true && dockly-pull || true && dockly-run'
fi

# pip
alias pip-update='pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs -n1 sudo -H pip install -U'
alias pip-check='pip check'

# firebase
if type "firebase" > /dev/null; then
  alias fb='firebase'
fi

# react-native
if type "react-native" > /dev/null; then
  alias rn-start='react-native start'
  alias rn-android='react-native run-android'
  alias local-android-props='echo "sdk.dir = /opt/android-sdk" > android/local.properties'
fi
