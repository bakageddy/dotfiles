filetype plugin on
set backspace=eol,indent,start

" Telescope is the best!!
nnoremap <leader>tf                         <CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <leader>tn                         <CMD>lua require('telescope.builtin').find_files({cwd = '~/.config/', hidden = true})<CR>
nnoremap <leader>th                         <CMD>lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>tr                         <CMD>lua require('telescope.builtin').treesitter()<CR>
nnoremap <leader>tg                         <CMD>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>ts                         <CMD>lua require('telescope.builtin').grep_string()<CR>
nnoremap <leader>ty                         <CMD>lua require('telescope.builtin').filetypes()<CR>
nnoremap <leader>tb                         <CMD>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>tc                         <CMD>lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>tm                         <CMD>lua require('telescope.builtin').man_pages()<CR>
nnoremap <leader>tp                         :Telescope project<CR>

" For Compiling a single file
nnoremap <leader>gcc                        :!gcc -Wall % && ./a.out<CR>
nnoremap <leader>cl                         :!sbcl --script %<CR>
nnoremap <leader>sl                         :!gsi-script %<CR>
nnoremap <leader>ua                         :!luajit %<CR>

" Compile a project
nnoremap <leader>rr                         :RustRun<CR>

" File Exploring
nnoremap <leader>on                         :Vex<CR>:vertical resize 30<CR>
nnoremap <leader>rb                         <C-^>

" Paste from clipboard
nnoremap <leader>p                          "+p<CR>

" Disable arrow keys
nnoremap <UP>                               <NUL>
nnoremap <DOWN>                             <NUL>
nnoremap <LEFT>                             <NUL>
nnoremap <RIGHT>                            <NUL>

inoremap <UP>                               <NUL>
inoremap <DOWN>                             <NUL>
inoremap <LEFT>                             <NUL>
inoremap <RIGHT>                            <NUL>

" Window Navigation
nnoremap <leader>j                          :wincmd j<CR>
nnoremap <leader>k                          :wincmd k<CR>
nnoremap <leader>l                          :wincmd l<CR>
nnoremap <leader>h                          :wincmd h<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:rooter_patterns = ['.git', '.gitignore', 'Makefile', 'bin/activate.sh']
let g:rooter_change_directory_for_non_project_files = ''
let g:rooter_silent_chdir = 1

autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lisp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

lua require('plugins')
lua require('sets')
lua require('binds')
