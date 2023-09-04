local overrides = require "configs.overrides"

return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    config = function()
      require('onenord').setup()
    end
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function(_, opts)
      vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
      vim.api.nvim_set_hl(0, "LeapMatch", {
        fg = "white",
        bold = true,
        nocombine = true,
      })
      vim.api.nvim_set_hl(0, "LeapLabelPrimary", {
        bg = "#f00077",
        fg = "#ffffff",
        bold = false,
        nocombine = true,
      })
      vim.api.nvim_set_hl(0, "LeapLabelSecondary", {
        fg = "blue",
        bold = true,
        nocombine = true,
      })
      require('leap').add_default_mappings()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require("neoscroll").setup(overrides.neoscroll.config)
      require("neoscroll.config").set_mappings(overrides.neoscroll.mappedKeys)
    end,
  }
}
