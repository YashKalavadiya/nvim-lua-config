call plug#begin()
Plug 'dense-analysis/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf' , {'do': { -> fzf#install() } }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
