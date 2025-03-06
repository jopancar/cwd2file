""" Plugin: Save Current Directory to a File
"""

" Define a Vim command to save the current directory
definecommand SaveCwd call SaveCurrentDirectory()

" Function to save current directory to a file
function! SaveCurrentDirectory()
    let l:cwd = getcwd()
    let l:file = l:cwd . '/cwd.txt'
    call writefile([l:cwd], l:file, 'w')
    echo 'Current directory saved to ' . l:file
endfunction
