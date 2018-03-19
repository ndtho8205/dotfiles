# dotfiles

## Screenshot

![screenshot](screenshot.png)

## Requirements

### zsh

Set `zsh` as your login shell:

```shell
chsh -s $(which zsh)
```

### vim

Install VIM 8.

### tmux

Steps to install Tmux from source

* Remove existing tmux install

```shell
sudo apt remove -y --purge tmux
```

* Install build dependencies:

```shell
sudo apt install -y automake build-essential cmake pkg-config
sudo apt install -y exuberant-ctags libevent-dev libncurses5-dev
```

* Download from GitHub and cd to src dir

```shell
git clone https://github.com/tmux/tmux.git
cd tmux
git checkout 2.6
```

* Configure, make, and make install

```shell
sh autogen.sh
./configure && make -j"$(nproc)"
sudo make install
```

* Check version of tmux

```shell
tmux -V
```

## Install

```shell
git clone https://github.com/ndtho8205/dotfiles.git
cd dotfiles
git submodule update --init --recursive
./install.sh
```

## zsh Configurations

TODO:

* [ ] Config zsh
  * [x] aliases
  * [x] completion
  * [x] exports
  * [x] history
  * [x] keybindings
  * ... (???)
* [ ] Install plugin(s)
  * [x] prezto
  * ... (???)
* [ ] Config plugin(s)
  * [x] prezto
* [x] Update `install.sh`
* [x] Test
* [ ] Write docs

## vim Configurations

TODO:

* [ ] Config vim
* [ ] Install plugins
  * [x] ayu-vim
  * [x] indentLine
  * [x] lightline.vim
  * [x] ale
  * [x] lightline-ale
  * [x] nerdtree
  * [x] vim-gitbranch
  * [x] vim-polygot
  * [x] emmet-vim
  * [x] vim-surround
  * [x] vim-multiple-cursors
  * [x] completor
  * ... (???)
* [ ] Config plugins
  * [x] ayu-vim
  * [x] indentLine
  * [x] lightline.vim
  * [x] ale
  * [x] lightline-ale
  * [x] nerdtree
  * [x] vim-gitbranch
  * [x] vim-polygot (for python, javascript, jsx, vue)
  * [ ] emmet-vim
  * [ ] vim-surround
  * [ ] vim-multiple-cursors
  * [ ] completor
  * ... (???)
* [x] Update `install.sh`
* [x] Test
* [ ] Write docs

## tmux

TODO:

* [ ] Config tmux
* [ ] Install plugin(s)
* [ ] Config plugin(s)
* [x] Test
* [x] Update `install.sh`
* [ ] Write docs
