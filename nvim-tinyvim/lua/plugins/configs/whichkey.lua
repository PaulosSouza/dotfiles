local wk = require "which-key"

-- normal mode
wk.register({
  ["<leader>f"] = {
    name = "file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    o = { "<cmd>Telescope oldfiles<cr>", "Old File" },
    w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
    s = { "<cmd>Telescope grep_string<cr>", "Find Selected Word" },
    a = {
      "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>",
      "Find all",
    },
    b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
    n = { "<cmd>enew<cr>", "New File" },
    m = {
      function()
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
        require("conform").format { async = true, lsp_fallback = true }
      end,
      "Format",
    },
    z = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
  },

  ["<leader>t"] = {
    name = "tabs",
    n = { ":tabnew<cr>", "New tab" },
    l = { ":tabnext<cr>", "Next tab" },
    h = { ":tabprevious<cr>", "Previous tab" },
  },

  ["<leader>"] = {
    d = {
      function()
        require("plugins.utils").buf_kill "bd"
      end,
      "Buffer close",
    },
    j = { "<cmd>JABSOpen <cr>", "Buffer manager" },
    q = { ":q<cr>", "Close buffer" },
    Q = { ":qa!<cr>", "Close neovim" },
  },

  ["<leader>m"] = {
    name = "+muren",
    o = { "<cmd>MurenToggle <cr>", "Muren Open" },
    c = { "<cmd>MurenClose <cr>", "Muren Close" },
  },

  ["<leader>/"] = {
    function()
      require("Comment.api").toggle.linewise.current()
    end,
    "Toggle comment",
  },

  -- start and end lines
  ["H"] = { "^", "end of line" },
  ["L"] = { "$", "beginning of line" },

  ["<Esc>"] = { "<cmd> noh <CR>", "Clear highlights" },
  [";"] = { ":", "Enter command mode" },

  -- split
  ["\\"] = { ":vsplit<cr>", "Split vertically" },
  ["|"] = { ":split<cr>", "Split horizontally" },

  -- switch windows
  ["<C-k>"] = { "<C-w>k", "Window up" },
  ["<C-h>"] = { "<C-w>h", "Window left" },
  ["<C-l>"] = { "<C-w>l", "Window right" },
  ["<C-j>"] = { "<C-w>j", "Window down" },

  -- switch buffers
  ["<Tab>"] = { "<cmd> BufferLineCycleNext <CR>", "Goto next buffer" },
  ["<S-tab>"] = { "<cmd> BufferLineCyclePrev <CR>", "Goto prev buffer" },

  -- save
  ["<C-s>"] = { "<cmd> w <CR>", "Save file" },

  -- toggle nvim
  ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

  -- terminal
  ["<A-i>"] = { "<cmd>Lspsaga term_toggle<cr>", "Toggle floating term" },
}, { mode = "n" })

-- visual mode
wk.register({

  -- toggle comment
  ["<leader>/"] = {
    "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    "Toggle comment",
  },

  -- indent
  ["<"] = { "<gv", "Indent line" },
  [">"] = { ">gv", "Indent line" },

  -- start and end line
  ["H"] = { "^", "end of line" },
  ["L"] = { "$", "beginning of line" },
}, { mode = "v" })

wk.register({
  ["<C-x>"] = {
    vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
    "Escape terminal mode",
  },

  ["<A-i>"] = { "<cmd>Lspsaga term_toggle<cr>", "Toggle floating term" },
}, { mode = "t" })
