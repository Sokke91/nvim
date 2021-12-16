:set number

:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/tpope/vim-fugitive'
set encoding=UTF-8
call plug#end()



nnoremap <C-N> <cmd> NERDTreeToggle<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

