# dotnvim

This is my nvim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Requirements
1. python
2. nodejs
3. curl

## Installation

1. Clone the repo `https://github.com/hhendrikk/dotfiles`
   - windows : `cp dotneovim $HOME/AppData/Local/nvim`
   - unix: `cp ./dotneovim/*.* ~/.config/nvim`
2. `cd ~/.config/nvim` or `$HOME/AppData/Local/nvim`
3. `md backups swaps undos autoload`
4. `pip install neovim`
5. `pip install --upgrade neovim`
6. Install [VIM-Plug](https://github.com/junegunn/vim-plug)
   - windows: `curl -fLo $HOME/AppData/Local/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
   - unix:`curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
7. Create link:
   - windows: 
     powershell: `cmd /c mklink $HOME\_vimrc $HOME\AppData\Local\nvim\init.vim`
8. `nvim +PlugInstall` to install all of the plugins.
