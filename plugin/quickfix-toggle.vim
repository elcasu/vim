nnoremap <leader>q :call <SID>QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! s:QuickfixToggle()
    if g:quickfix_is_open ==# 0
        copen
        let g:quickfix_is_open = 1
        execute g:last_window . "wincmd w"
    else
        let g:last_window = winnr()
        cclose
        let g:quickfix_is_open = 0
    endif
endfunction
