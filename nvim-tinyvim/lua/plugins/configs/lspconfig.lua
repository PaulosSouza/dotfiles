-- Global mappings.
local wk = require "which-key"

-- vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
--vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
--vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    wk.register({
      ["g"] = {
        b = { "<cmd>Lspsaga outgoing_calls<cr>", "Outgoing Calls" },
        c = { "<cmd>Lspsaga incoming_calls<cr>", "Incoming Calls" },
        D = { "<cmd>Trouble document_diagnostics<cr>", "Document Diagnostics" },
        d = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
        r = { "<cmd>Trouble lsp_references<cr>", "References" },
        t = { "<cmd>Trouble lsp_type_definitions<cr>", "Type Definitions" },
        i = { "<cmd>Trouble lsp_implementations<cr>", "Implementations" },
        w = { "<cmd>Trouble workspace_diagnostics<cr>", "Implementations" },
        s = {
          function()
            vim.lsp.buf.signature_help()
          end,
          "LSP Hover",
        },
      },

      ["K"] = { "<cmd>Lspsaga hover_doc<cr>", "LSP Hover" },

      ["<leader>e"] = {
        function()
          vim.diagnostic.open_float()
        end,
        "Open float",
      },
      ["<leader>ra"] = { "<cmd>Lspsaga rename<cr>", "LSP Rename" },
      ["<leader>ca"] = { "<cmd>Lspsaga code_action<cr>", "LSP code action" },
    }, { mode = "n", buffer = ev.buf, silent = true, noremap = true })
  end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

-- signs
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Setup language servers.
local lspconfig = require "lspconfig"

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
}

-- setup multiple servers with same default options

local servers = {
  "html",
  "cssls",
  "dotls",
  "jsonls",
  "tailwindcss",
  "bashls",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end
