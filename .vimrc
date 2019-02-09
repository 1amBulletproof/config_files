colorscheme default

inoremap jk <esc>
inoremap kj <esc>
inoremap jj <esc>
inoremap df <esc>
inoremap fd <esc>

syntax enable				" enable syntaxt processing

" autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set backspace=indent,eol,start " Vim 8+ will not otherwise backspace while in insert mode beyond where the insert mode started

" Whitespace
set tabstop=4				" number of visual spaces per TAB when reading

set softtabstop=4			" number of visual spaces per TAB when editing

"set expandtab				" tabs are spaces: makes tabs a shortcut for inserting spaces

set shiftwidth=4            " size of an "indent" it's also measured in spaces

" UI Config
set number				" show line numbers

set showcmd				" show command in the bottom bar

set cursorline				" highlight cursor currently line

filetype indent on			" load filetype-specific indent files, i.e. load python indentation file for *.py

set wildmenu				" visual automcomplete for command menu

set lazyredraw				" redraw the screen only when we need to 

set showmatch				" highlight mathing [{()}]

set ruler				" display the cursor position on the last line of the screen or in the status line 

" Searching
set ignorecase				" ignore case when searching

set smartcase				" search for case based on input search

set incsearch				" search as characters are entered

set hlsearch				" highlight matches

" Folding
set foldenable				" enable code folding

set fdm=indent				" folding method is syntax: groups lines of code based on the syntax

set foldlevelstart=10			" open most folds by default

set foldnestmax=10			" 10 nested fold max

" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
        echo a:cmdline
        let expanded_cmdline = a:cmdline
        for part in split(a:cmdline, ' ')
                if part[0] =~ '\v[%#<]'
                        let expanded_part = fnameescape(expand(part))
                        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
                endif
        endfor
        botright new
        setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
        call setline(1, 'You entered:    ' . a:cmdline)
        call setline(2, 'Expanded Form:  ' .expanded_cmdline)
        call setline(3,substitute(getline(2),'.','=','g'))
        execute '$read !'. expanded_cmdline
        setlocal nomodifiable
        1
endfunction

