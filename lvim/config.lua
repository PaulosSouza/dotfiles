lvim.plugins = {
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        hide_cursor = true,
        stop_eof = true,
        use_local_scrolloff = false,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = nil,
        pre_hook = nil,
        post_hook = nil,
      })

      local mappedKeys    = {}
      mappedKeys['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } }
      mappedKeys['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }
      mappedKeys['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '450' } }
      mappedKeys['<C-m>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450' } }
      mappedKeys['<C-y>'] = { 'scroll', { '-0.10', 'false', '100' } }
      mappedKeys['<C-e>'] = { 'scroll', { '0.10', 'false', '100' } }
      mappedKeys['zt']    = { 'zt', { '250' } }
      mappedKeys['zz']    = { 'zz', { '250' } }
      mappedKeys['zb']    = { 'zb', { '250' } }

      require('neoscroll.config').set_mappings(mappedKeys)
    end
  },
  { 'matbme/JABS.nvim' },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { 'mg979/vim-visual-multi',    branch = 'master' },
  { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
  {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
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
  { "catppuccin/nvim", as = "catppuccin" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
  },
}

reload("plugins.neoscroll")
reload("plugins.alpha")
reload("plugins.nvim-tree")
reload("plugins.trouble")
reload("plugins.treesitter")
reload("plugins.jabs")
reload("plugins.telescopes")
reload("plugins.formaters")
reload("plugins.keybinds")
reload("plugins.catppuccin")
reload("plugins.bufferline")
reload("plugins.toggleterm")
reload("plugins.lsp")
reload("plugins.statusline")
reload("plugins.symbols-outline")


-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.builtin.treesitter.auto_install = true
vim.opt.cursorline = false

lvim.builtin.project.active = false
lvim.builtin.bufferline.active = true
lvim.builtin.breadcrumbs.active = false
lvim.builtin.indentlines.active = false
lvim.builtin.illuminate.active = false
