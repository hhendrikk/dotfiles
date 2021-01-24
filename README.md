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

# gitconfig linux
```
rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

# gitconfig windows
```
rm $HOME/.gitconfig
New-Item -ItemType SymbolicLink -Path "$HOME/.gitconfig" -Target "$HOME\.dotfiles\.gitconfig"
```
# neovim Linux

```
1. ln -s ~/.dotfiles/dotneovim ~/.config/nvim
2. mkdir backups swaps undos autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
7. nvim -c 'CocInstall -sync coc-json coc-html coc-eslint coc-tslint coc-vetur coc-tsserver coc-css coc-emmet|q'
```

# neovim Windows

```
1. New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim" -Target "$HOME\.dotfiles\dotneovim"
2. cd $HOME\.dotfiles\dotneovim; mkdir backups,swaps,undos,autoload
3. pip3 install neovim
4. pip3 install --upgrade neovim
5. curl -fLo $HOME\.dotfiles\dotneovim\autoload\plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
6. nvim +PlugInstall
```

# oh-my-zsh linux
```
1. sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
2. git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
3. ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
4. sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
5. rm ~/.zshrc
6. ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
