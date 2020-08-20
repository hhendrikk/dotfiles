" NERDTree {
map <Leader>q :NERDTreeToggle<CR>
" }

" Airlines {
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
" }

" VUE {
let g:vue_pre_processors = []
" }

" Ale {
let g:ale_fixers={
      \'css': ['prettier'],
      \'javascript': ['prettier', 'eslint'],
      \'json': ['prettier'],
      \'markdown': ['prettier'],
      \'scss': ['prettier'],
      \'typescript': ['prettier', 'tslint'],
      \'vue': ['prettier', 'eslint']
      \}
" }

let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss', 'css']}
let g:ale_linters = {'vue': ['eslint', 'vls']}
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
" }

" fzf {
let g:fzf_layout = { 'down': '~60%' }
" }

" gruvbox {
let g:gruvbox_contrast_light = 'hard'
" }
