if has('win32')
" Plugins {
  source ~/AppData/Local/nvim/plugins.vim
" }

" Mappings {
  source ~/AppData/Local/nvim/mappings.vim
" }

" Plugin configs {
  source ~/AppData/Local/nvim/plugin_config.vim
" }

" Configs {
   source ~/AppData/Local/nvim/configs.vim
" }
else
" Plugins {
  source ~/.config/nvim/plugins.vim
" }

" Mappings {
   source ~/.config/nvim/mappings.vim
" }

" Plugin configs {
  source ~/.config/nvim/plugin_config.vim
" }

" Configs {
   source ~/.config/nvim/configs.vim
" }
endif
