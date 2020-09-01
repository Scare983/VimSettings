set number
colorscheme seoul256 
syntax on 
filetype plugin on
if &term =~ "xterm\\|rxvt"
:silent !echo -ne "\033]12;white\007"
let &t_SI = "\033]12;red\007"
let &t_EI = "\033]12;white\007"
autocmd VimLeave * :!echo -ne "\033]12;white\007"
endif

