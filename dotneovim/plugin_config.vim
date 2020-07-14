" Enable NCM2 for all buffers {
set completeopt=noinsert,menuone,noselect
autocmd BufEnter * call ncm2#enable_for_buffer()
"}

" Omni-completion {
autocmd FileType php setlocal omnifunc=phpactor#Complete
" }

" phpactor maps {
augroup phpactor
  autocmd!

  autocmd FileType php nnoremap <buffer> gd :PhpactorGotoDefinition<CR>
  autocmd FileType php nnoremap <buffer> mv :PhpactorMoveFile<CR>
  autocmd FileType php nnoremap <buffer> fr :PhpactorFindReferences<CR>
  autocmd FileType php nnoremap <buffer> cn :PhpactorClassNew<CR>
  autocmd FileType php nnoremap <buffer> ga :PhpactorGenerateAccessors<CR>
  autocmd FileType php nnoremap <buffer> gi :PhpactorGotoImplementations<CR>
  autocmd FileType php nnoremap <buffer> ic :PhpactorImportMissingClasses<CR>
augroup END
" }

" NERDTree {
map <Leader>q :NERDTreeToggle<CR>
" }

" Plugin ultisnips {
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
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

" AutoFormat {
au BufWrite * :Autoformat
" }

" Fzf {
let g:fzf_layout = { 'down': '~60%' }
" }

" ale {
let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}
" }
