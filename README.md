# requirements
- git
- python3
- neovim 0.5+
- scoop
- dotnet
- curl

# clone
```
git clone git@github.com:hhendrikk/dotfiles.git ~/.dotfiles
```

# gitconfig windows
```
rm $HOME/.gitconfig
sudo New-Item -ItemType SymbolicLink -Path "$HOME/.gitconfig" -Target "$HOME\.dotfiles\.gitconfig"
```

# neovim Windows

```
1. sudo New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME\.dotfiles\dotneovim"
2. cd $HOME\.dotfiles\dotneovim; mkdir backups,swaps,undos,autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo $HOME\.dotfiles\dotneovim\autoload\plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
```