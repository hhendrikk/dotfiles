" NERDTree {
map <Leader>q :NERDTreeToggle<CR>
let g:NERDTreeWinSize=60
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

let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss', 'css']}
let g:ale_linters = {'vue': ['eslint', 'vls'], 'cs': ['OmniSharp']}
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
" }

" fzf {
let g:fzf_layout = { 'down': '~60%' }
" }

" gruvbox {
let g:gruvbox_contrast_light = 'hard'
" }

" Asyncomplete {
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" }

" Colors {
augroup ColorschemePreferences
  autocmd!
  " These preferences clear some gruvbox background colours, allowing transparency
  autocmd ColorScheme * highlight Normal     ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight SignColumn ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight Todo       ctermbg=NONE guibg=NONE
  " Link ALE sign highlights to similar equivalents without background colours
  autocmd ColorScheme * highlight link ALEErrorSign   WarningMsg
  autocmd ColorScheme * highlight link ALEWarningSign ModeMsg
  autocmd ColorScheme * highlight link ALEInfoSign    Identifier
augroup END
" }

" Lightline {
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'right': [
      \     ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'],
      \     ['lineinfo'], ['percent'],
      \     ['fileformat', 'fileencoding', 'filetype', 'sharpenup']
      \   ]
      \ },
      \ 'inactive': {
      \   'right': [['lineinfo'], ['percent'], ['sharpenup']]
      \ },
      \ 'component_expand': {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_infos': 'lightline#ale#infos',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok'
      \  },
      \ 'component_type': {
      \   'linter_checking': 'right',
      \   'linter_infos': 'right',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'right'
      \  }
      \}
" Use unicode chars for ale indicators in the statusline
let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_infos = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "
" }

" markdown {
let g:vim_markdown_folding_disabled = 1
" }

" COC {
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-vetur', 'coc-git', 'coc-eslint', 'coc-stylelint', 'coc-highlight']

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)

nmap <leader>qf  <Plug>(coc-fix-current)
" }
