lvim.plugins = {
  { 'shaunsingh/nord.nvim' },
  { 'karb94/neoscroll.nvim' },
  { 'matbme/JABS.nvim' },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { 'mg979/vim-visual-multi', branch = 'master' },
  { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
  {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag")
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  { "catppuccin/nvim", as = "catppuccin" }
}

require("plugins.neoscroll")
require("plugins.alpha")
require("plugins.nvim-tree")
require("plugins.trouble")
require("plugins.treesitter")
require("plugins.jabs")
require("plugins.telescopes")
require("plugins.formaters")
require("plugins.lsp")
require("plugins.keybinds")
require("plugins.catppuccin")
require("plugins.bufferline")

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
vim.opt.cursorline = false

lvim.builtin.project.active = false
lvim.builtin.bufferline.active = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.indentlines.active = false
lvim.builtin.illuminate.active = false
