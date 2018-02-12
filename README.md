# dotfiles

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
git clone --recursive https://github.com/ndtho8205/dotfiles.git
cd dotfiles
./install.sh
```

## Screenshot

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
  * [ ] prezto
* [x] Update `install.sh`
* [ ] Test
* [ ] Write docs

## vim Configurations

TODO: \* [x] vim-javascript

* [x] vim-jsx
* [x] vim-vue

* [ ] Config vim
* [ ] Install plugins
  * [x] ayu-vim
  * [x] indentLine
  * [x] lightline.vim
  * [x] ale
  * [x] lightline-ale
  * [x] nerdtree
  * [x] vim-gitbranch
  * [x] vim-javascript
  * [x] vim-jsx
  * [x] vim-vue
  * ... (???)
* [ ] Config plugins
  * [x] ayu-vim
  * [x] indentLine
  * [x] lightline.vim
  * [x] ale
  * [x] lightline-ale
  * [x] nerdtree
  * [x] vim-gitbranch
  * [ ] vim-javascript
  * [ ] vim-jsx
  * [ ] vim-vue
  * ... (???)
* [x] Update `install.sh`
* [ ] Test
* [ ] Write docs

## tmux

TODO:

* [ ] Config tmux
* [ ] Install plugin(s)
* [ ] Config plugin(s)
* [ ] Test
* [ ] Update `install.sh`
* [ ] Write docs
