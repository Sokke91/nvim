" Basic Conf
:set number

:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set encoding=UTF-8

" Setup Plugins
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
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'vim-test/vim-test'

call plug#end()

" Format Code with Prettier bevor save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

"  Change leader key to ,
let mapleader = ","

" Shortcuts
nnoremap <leader>t :TestFile<cr>
nnoremap <leader>gs :G status<cr>
nnoremap <leader>gc :G commit<cr>
nnoremap <leader>ga :G add .<cr>
nnoremap <leader>gp :G push<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>fp :Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

