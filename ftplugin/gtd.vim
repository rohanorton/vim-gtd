" Vim ftplugin file
" Language: Getting Things Done
" Maintainer: Rohan Orton
" Latest Revision: 19 November 2016

" Execute Line function:
" Idea and implementation is taken from vimoutliner
" https://github.com/vimoutliner/vimoutliner/blob/master/ftplugin/votl.vim#L519
function ExecLine()
    let l:text = getline(line('.'))
    let l:cmd_idx = matchend(l:text, '\#\!')
    if l:cmd_idx != -1
        let l:cmd = strpart(l:text, l:cmd_idx)
        let l:cmd = '!' . l:cmd
        exec l:cmd
    endif
endfunction


noremap <silent><buffer> <localleader>e :call ExecLine()<cr>
