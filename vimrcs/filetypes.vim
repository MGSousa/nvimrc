""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 

""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX') 
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color 
    endif
endif


""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1


""""""""""""""""""""""""""""""
" => Mini program
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.acss set syntax=css ft=css
au BufNewFile,BufRead *.axml set syntax=html ft=html
au BufNewFile,BufRead *.wxss set syntax=css ft=css
au BufNewFile,BufRead *.wxml set syntax=html ft=html
au BufNewFile,BufRead *.tmpl set syntax=go ft=go
au BufNewFile,BufRead *.gop set syntax=go ft=go
au BufNewFile,BufRead *.gotmpl set syntax=go ft=go

""""""""""""""""""""""""""""""
" => HashiCorp configuration language
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.hcl set ft=toml
au BufNewFile,BufRead *.nomad set ft=toml
