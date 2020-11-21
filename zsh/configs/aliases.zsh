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
  alias ar='sudo apt purge'
  alias aug='sudo apt update && sudo apt upgrade'
  alias clean='sudo apt autoremove && sudo apt autoremove --purge && sudo apt clean && sudo apt autoclean'
else
  alias ai='sudo pacman -Syu && sudo pacman -Sy'
  alias ar='sudo pacman -Rns'
  alias yi='yay -Syu && yay -Sy'
  alias yr='yay -Rns'
  alias aug='sudo pacman -Syu && yay -Syu'
  alias clean='paccache -r && sudo pacman -Scc && sudo pacman -Rns $(pacman -Qtdq)'
fi

# shortcuts
alias vi='vim'
alias x+='chmod +x'
alias rz='source ~/.zshrc'
alias p='ps aux | grep'
alias k9='kill -9'
alias ka='killall'
alias -g G=' | grep'
alias -g L=' | less'

# cat
if type "bat" > /dev/null; then
  alias cat='bat'
fi

# docker
if type "docker" > /dev/null; then
  alias dk='docker'
  alias dkc='docker-compose'

  alias dk-start='systemctl start docker'
  alias dk-stop='systemctl stop docker'
  alias dk-prune='docker system prune -af'
  alias dk-clean='docker stop $(docker ps -qa) ; docker rm -f $(docker ps -qa) ; docker rmi -f $(docker images -qa) ; docker volume rm -f $(docker volume ls -q) ; docker network prune -f'
fi

# react-native
if type "react-native" > /dev/null; then
  alias rn-start='react-native start'
  alias rn-android='react-native run-android'
  alias local-android-props='echo "sdk.dir = /opt/android-sdk" > android/local.properties'
fi
