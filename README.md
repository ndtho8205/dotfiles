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

* Install VIM 8.

```shell
sudo add-apt-repository ppa:jonathonf/vim

# you may want to install vim-gtk3 for more features
sudo apt install vim
```

* Check version of vim

```shell
vim --version
```

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

## TODO

* [ ] Refactor vim configs
  * [x] common
  * [x] plugins (auto-pairs, indentLine, lightline, papercolor)
  * [x] golang
  * [ ] plugins(ale, coc.nvim, fzf.vim)
  * [ ] rust: ale and coc-rust cannot lint the files other than `main.rs`
      due to a `rls` issue related to cargo project structures
  * [ ] python: coc-python provides too much features that exceeds my needs
  * [ ] filetypes (shellscript, javascript, vue, java, markdown, kotlin)
* [ ] Refactor zsh configs
* [ ] Config tmux
