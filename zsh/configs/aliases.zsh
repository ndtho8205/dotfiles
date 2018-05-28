# aliases

# cd
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ubuntu
alias cat='pygmentize -O style=native -f console256 -g'
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

# bundler
alias be='bundle exec'
alias bej='bundle exec jekyll serve'

# git
alias glconfig='git config user.name "$GL_NAME" && git config user.email $GL_EMAIL'
alias bbconfig='git config user.name "$BB_NAME" && git config user.email $BB_EMAIL'

# mysql
alias mysql-start='sudo systemctl start mysql.service'
alias mysql-stop='sudo systemctl stop mysql.service'
alias mysql-restart='sudo systemctl restart mysql.service'
alias mysql-status='sudo systemctl status mysql.service'

# mongodb
alias mongod-start='sudo service mongod start'
alias mongod-stop='sudo service mongod stop'
alias mongod-restart='sudo service mongod restart'
alias mongod-status='sudo service mongod status'

# docker
alias docker-start='sudo systemctl start docker'
alias docker-stop='sudo systemctl stop docker'
alias docker-restart='sudo systemctl restart docker'
alias docker-status='sudo systemctl status docker'

alias docker-del-all-images='docker rmi $(docker images -q)'

alias docker-kill-all='docker kill $(sudo docker ps -q)'
alias docker-clean-container='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias docker-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias docker-clean='dockercleanc || true && dockercleani'

# pip
alias pip-update='pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs -n1 sudo -H pip install -U'
alias pip-check='pip check'

# firebase
alias fb='firebase'

# react-native
alias rn-start='react-native start'
alias rn-android='react-native run-android'
alias local-android-props='echo "sdk.dir = /opt/android-sdk" > android/local.properties'
