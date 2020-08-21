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

" Remap fd do esc {
inoremap fd <Esc>
inoremap <Esc> <Nop>
" }

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
map <leader><leader> :noh<CR>
"}

" FZF {
map <silent> <C-p> :FZF<CR>
" }

" ALE {
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
nmap <F6> <Plug>(ale_fix)
" }

" COC {
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" }
