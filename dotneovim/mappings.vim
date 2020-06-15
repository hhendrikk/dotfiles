let mapleader = ","

" Disable Arrows {
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
" }

" Command show TODOs and FIXMEs {
  command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
" }

if !exists('g:vscode')
" Remap jj do esc {
  inoremap jj <Esc>
  inoremap <Esc> <Nop>
" }
endif

" Neovim :Terminal {
  tmap <Esc> <C-\><C-n>
  tmap <C-w> <Esc><C-w>
  tmap <C-d> <Esc>:q<CR>
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
" }

" Mappings {
  if has('win32')
    nmap <leader>s <C-w>s<C-w>j:terminal pwsh<CR>
    nmap <leader>vs <C-w>v<C-w>l:terminal pwsh<CR>
  else
    nmap <leader>s <C-w>s<C-w>j:terminal zsh<CR>
    nmap <leader>vs <C-w>v<C-w>l:terminal zsh<CR>
  endif

  nmap <Tab> :bnext<CR>
  nmap <S-Tab> :bprevious<CR>
  nmap <C-p> :Denite file<CR>
  map <leader><leader> :noh<CR>
"}
