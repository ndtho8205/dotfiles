# aliases

# cd
alias cd='cdls'
alias -g ..='..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# mkdir and cd to it
alias mkdir='mkdir -p'
alias mcd='mkdcd'

# debian
if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
  alias ai='sudo apt install'
  alias au='sudo apt update'
  alias aug='sudo apt upgrade'
  alias clean='sudo apt autoremove && sudo apt autoremove --purge && sudo apt clean && sudo apt autoclean'
else
  alias ai='sudo pacman -S'
  alias ar='sudo pacman -Rns'
  alias au='sudo pacman -Syy'
  alias aug='sudo pacman -Syu'
  alias clean='sudo pacman -Qtdq | pacman -Rns -'
fi

# shortcuts
alias e='$EDITOR'
alias v='$VISUAL'
alias x+='chmod +x'
alias rz='source ~/.zshrc'
alias -g G=' | grep'
alias -g L=' | less'

# cat
if type "bat" > /dev/null; then
  alias cat='bat'
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

# react-native
if type "react-native" > /dev/null; then
  alias rn-start='react-native start'
  alias rn-android='react-native run-android'
  alias local-android-props='echo "sdk.dir = /opt/android-sdk" > android/local.properties'
fi
