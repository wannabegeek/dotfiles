syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

if &t_Co > 8
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized
endif

