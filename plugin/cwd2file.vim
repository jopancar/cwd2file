" save_current_directory.vim

" Define a function to save the current directory to the file
function! SaveCurrentDirectory()
    " Get the current directory
    let l:current_directory = getcwd()

    " Open the current file in append mode and write the directory
    execute 'normal! Go' . l:current_directory
endfunction

" Create a command to call the function
command! SaveCWD call SaveCurrentDirectory()

" Optionally, you can map a key to this command
" For example, map <leader>sd to save the current directory
" nnoremap <leader>sd :SaveCurrentDirectory<CR>
