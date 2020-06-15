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

" Denite {
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
" }
