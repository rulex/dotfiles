" 2019-08-27 14:25:06 custom cpp neomake makers stuff

"function! neomake#makers#ft#cpp#EnabledMakers() abort
"    let makers = executable('clang++') ? ['clang', 'clangtidy', 'clangcheck'] : ['gcc']
"    call add(makers, 'cppcheck')
"    return makers
"endfunction

"let neomake#makers#ft#cpp#clang()

let g:neomake_cpp_maker = {
            \ 'exe': 'clang',
            \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-I./', '-I./test_include', '-std=c++17'],
            \ 'errorformat':
                \ '%-G%f:%s:,' .
                \ '%f:%l:%c: %trror: %m,' .
                \ '%f:%l:%c: %tarning: %m,' .
                \ '%I%f:%l:%c: note: %m,' .
                \ '%f:%l:%c: %m,'.
                \ '%f:%l: %trror: %m,'.
                \ '%f:%l: %tarning: %m,'.
                \ '%I%f:%l: note: %m,'.
                \ '%f:%l: %m'
            \ }
" Use the maker like this:
":Neomake! make
