" hardmode.vim - Vim: HARD MODE!!!
" Authors:      Matt Parrott <parrott.matt@gmail.com>, Xeross <contact@xeross.me>
" Version:      1.0

if exists('g:HardMode_loaded')
    finish
endif
let g:HardMode_loaded = 1

if !exists('g:HardMode_currentMode')
    let g:HardMode_currentMode = 'easy'
end

if !exists('g:HardMode_level')
    let g:HardMode_level = 'advanced'
end

if !exists('g:HardMode_echo')
    let g:HardMode_echo = 1
end

if !exists('g:HardMode_hardmodeMsg')
    let g:HardMode_hardmodeMsg = "VIM: Hard Mode [ ':call EasyMode()' to exit ]"
end
if !exists('g:HardMode_easymodeMsg')
    let g:HardMode_easymodeMsg = "You are weak..."
end

" Only echo if g:HardMode_echo = 1
fun! HardModeEcho(message)
    if g:HardMode_echo
        echo a:message
    end
endfun

fun! NoArrows()

    nnoremap <silent> <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    inoremap <silent> <buffer> <Left> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <silent> <buffer> <Right> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <silent> <buffer> <Up> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <silent> <buffer> <Down> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <silent> <buffer> <PageUp> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <silent> <buffer> <PageDown> <C-O>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    vnoremap <silent> <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoLetters()

    vnoremap <silent> <buffer> h <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> j <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> k <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> l <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    " Display line motions
    vnoremap <silent> <buffer> gj <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <silent> <buffer> gk <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> gk <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> gj <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    nnoremap <silent> <buffer> h <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> j <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> k <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> l <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <silent> <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoBackspace()

    set backspace=0

endfun

fun! HardMode()

    call NoArrows()

    if g:HardMode_level != 'wannabe'
        call NoLetters()
        call NoBackspace()
    end

    let g:HardMode_currentMode = 'hard'

    call HardModeEcho(g:HardMode_hardmodeMsg)
endfun

fun! EasyMode()
    set backspace=indent,eol,start

    silent! nunmap <buffer> <Left>
    silent! nunmap <buffer> <Right>
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <PageUp>
    silent! nunmap <buffer> <PageDown>

    silent! iunmap <buffer> <Left>
    silent! iunmap <buffer> <Right>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <PageUp>
    silent! iunmap <buffer> <PageDown>

    silent! vunmap <buffer> <Left>
    silent! vunmap <buffer> <Right>
    silent! vunmap <buffer> <Up>
    silent! vunmap <buffer> <Down>
    silent! vunmap <buffer> <PageUp>
    silent! vunmap <buffer> <PageDown>

    silent! vunmap <buffer> h
    silent! vunmap <buffer> j
    silent! vunmap <buffer> k
    silent! vunmap <buffer> l
    silent! vunmap <buffer> -
    silent! vunmap <buffer> +

    silent! nunmap <buffer> h
    silent! nunmap <buffer> j
    silent! nunmap <buffer> k
    silent! nunmap <buffer> l
    silent! nunmap <buffer> -
    silent! nunmap <buffer> +

    let g:HardMode_currentMode = 'easy'

    call HardModeEcho(g:HardMode_easymodeMsg)
endfun

fun! ToggleHardMode()
    if g:HardMode_currentMode == 'hard'
        call EasyMode()
    else
        call HardMode()
    end
endfun
