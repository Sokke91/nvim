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
Plug 'https://github.com/preservim/nerdtree'  " FileTree
Plug 'https://github.com/vim-airline/vim-airline'  " Status Bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Color Themes
Plug 'neoclide/coc.nvim' " Autocopletion
Plug 'nvim-lua/plenary.nvim' 
Plug 'nvim-telescope/telescope.nvim' " Fuzzy File Finding
Plug 'kyazdani42/nvim-web-devicons' " Icons
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax Highligt 
Plug 'https://github.com/tpope/vim-fugitive' " Git
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] } " Prettier Format
Plug 'vim-test/vim-test' " Test with jest

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
nnoremap <leader>gl :G log<cr>

nnoremap <leader>n :NERDTreeToggle<cr>

nnoremap <leader>fp :Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

