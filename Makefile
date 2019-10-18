
.PHONY: basic full .conkyrc .gitignore .my.cnf .zprofile .pentadactylrc .bashrc .mouse.sh .Xdefaults .synergy.conf .aliases .tmux.conf .vimrc .xmodmap .zshrc .xinitrc .gitconfig

default:
	@echo "don't do that."
	@echo ""
	@echo "Usage: make <dotfile>"
	@echo "example: 'make .zshrc'"

basic: .zshrc .vim .vimrc .tmux.conf .bashrc .my.cnf i3 clipit dunst sxiv termite
full: basic

.aliases:
	@echo not needed
.mouse.sh:
	@echo not needed
.xmodmap:
	@echo not needed

# basic
.zshrc:
	cd .. && ln -s ./dotfiles/$@ $@

.tmux.conf:
	cd .. && ln -s ./dotfiles/$@ $@

.bashrc:
	cd .. && ln -s ./dotfiles/$@ $@

.vim:
	cd .. && ln -s ./dotfiles/$@ $@ ; cd .config && ln -s ../dotfiles/$@ nvim

.vimrc:
	cd .. && ln -s ./dotfiles/$@ $@ && ln -s ./dotfiles/$@ init.vim

.my.cnf:
	cd .. && ln -s ./dotfiles/$@ $@

.gitconfig:
	cd .. && ln -s ./dotfiles/$@ $@

i3:
	cd ../.config/i3/ && ln -s ../../dotfiles/.config/i3/config config && ln -s ../../dotfiles/.config/i3/i3status.conf i3status.conf

clipit:
	cd ../.config/clipit && ln -s ../../dotfiles/.config/clipit/clipitrc clipitrc

dunst:
	cd ../.config/dunst && ln -s ../../dotfiles/.config/dunst/dunstrc dunstrc

sxiv:
	mkdir -p ../.config/sxiv/exec && cd ../.config/sxiv/exec && ln -s ../.config/sxiv/exec/key-handler && ln -s ../.config/sxiv/exec/image-info

termite:
	mkdir -p ../.config/termite && cd ../.config/termite && ln -s ../../dotfiles/.config/termite/config config

# the rest
.pentadactylrc:
	cd .. && ln -s ./dotfiles/$@ $@

.Xdefaults:
	cd .. && ln -s ./dotfiles/$@ $@

.synergy.conf:
	cd .. && ln -s ./dotfiles/$@ $@

.xinitrc:
	cd .. && ln -s ./dotfiles/$@ $@

.zprofile:
	cd .. && ln -s ./dotfiles/$@ $@

