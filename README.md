# requirements
- git
- python3
- neovim 0.5+
- curl
- nvm

# WINDOWS

## clone
```
git clone git@github.com:hhendrikk/dotfiles.git ~/.dotfiles
```

## gitconfig
```
rm $HOME/.gitconfig
sudo New-Item -ItemType SymbolicLink -Path "$HOME/.gitconfig" -Target "$HOME\.dotfiles\.gitconfig"
```

## neovim

```
1. sudo New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME\.dotfiles\dotneovim"
2. cd $HOME\.dotfiles\dotneovim; mkdir backups,swaps,undos,autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo $HOME\.dotfiles\dotneovim\autoload\plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
```

# LINUX

## gitconfig
```
rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

## neovim

```
1. ln -s ~/.dotfiles/dotneovim ~/.config/nvim & cd ~/.dotfiles/dotneovim
2. mkdir backups swaps undos autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
7. ln -s ~/.dotfiles/dotneovim/coc/coc-settings.json ~/.config/nvim/coc-settings.json
```

## zshrc
```
1. ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
