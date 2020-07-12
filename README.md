# Requirements

- git
- python 3
- nodejs
- curl
- kdiff3
- hyperjs

```
git clone git@github.com:hhendrikk/dotfiles.git ~/.dotfiles
```

# gitconfig
```
rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

# neovim

```
1. ln -s ~/.dotfiles/dotneovim ~/.config/nvim
2. mkdir backups swaps undos autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
```

# hyperjs

```
rm ~/.hyperjs
ln -s ~/.dotfiles/.hyperjs ~/.hyperjs
```
