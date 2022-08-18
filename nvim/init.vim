" Plugins
call plug#begin('$HOME/.local/share/nvim/plugged')

" Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Sonokai theme
Plug 'sainnhe/sonokai'

" Nord themes
Plug 'shaunsingh/nord.nvim'

" Devicons
Plug 'ryanoasis/vim-devicons'

" Nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Nvim tree
Plug 'kyazdani42/nvim-web-devicons' " 
Plug 'kyazdani42/nvim-tree.lua'

" Sintax name
Plug 'sheerun/vim-polyglot'

" Coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Highlighting and indenting JSX and TSX
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

if (has("nvim"))
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-file-browser.nvim'
endif

" Dashboard
Plug 'https://github.com/glepnir/dashboard-nvim'

" Smooth Scrool
Plug 'karb94/neoscroll.nvim'

" Which-key
Plug 'folke/which-key.nvim'

" Multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" JABS
Plug 'https://github.com/matbme/JABS.nvim'
    
" Nvim LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp' 
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip' 

" Trouble
Plug 'folke/trouble.nvim'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

"Bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" Lualine
Plug 'nvim-lualine/lualine.nvim'

" Comment
Plug 'terrortylor/nvim-comment'

" Prisma LSP
Plug 'pantharshit00/vim-prisma'

" Nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mxsdev/nvim-dap-vscode-js'

call plug#end()

source $HOME/.config/nvim/plugins/variables.vim
source $HOME/.config/nvim/plugins/keybinds.vim
source $HOME/.config/nvim/themes/nord.vim
source $HOME/.config/nvim/plugins/nvim-lspconfig.vim
source $HOME/.config/nvim/plugins/nvim-cmp.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/nvim-treesitter.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/dashboard.vim
source $HOME/.config/nvim/plugins/neoscroll.vim
source $HOME/.config/nvim/plugins/which-key.vim
source $HOME/.config/nvim/plugins/jabs.vim
source $HOME/.config/nvim/plugins/trouble.vim
source $HOME/.config/nvim/plugins/vim-jsx-typescript.vim
source $HOME/.config/nvim/plugins/markdown-preview.vim
source $HOME/.config/nvim/plugins/bufferline.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/nvim-comment.vim
source $HOME/.config/nvim/plugins/nvim-dap-ui.vim
source $HOME/.config/nvim/plugins/nvim-dap.vim
