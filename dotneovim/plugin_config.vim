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
      \'typescript': ['prettier', 'tslint']
      \}
" }

let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" }

" fzf {
let g:fzf_layout = { 'down': '~60%' }
" }
