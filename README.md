# Requirements

- git
- python 3
- nodejs
- curl
- kdiff3
- hyperjs
- zsh

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
rm ~/.hyper.js
ln -s ~/.dotfiles/.hyper.js ~/.hyper.js
```

# oh-my-zsh
```
1. sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
2. git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
3. ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
4. sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

5. rm ~/.zshrc
6. ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
