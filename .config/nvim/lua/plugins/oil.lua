return {
  "stevearc/oil.nvim",
  event = "BufEnter",
  opts = {},
  -- Optional dependencies
  dependencies = {
    { "nvim-treesitter/nvim-treesitter" },
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  config = function()
    local oil = require("oil")
    oil.setup({
      keymaps = {
        ["q"] = "actions.close",
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
        end,
      },
    })
  end,
}
