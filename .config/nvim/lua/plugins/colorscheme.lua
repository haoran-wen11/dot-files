return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flaveour = "mocha",
      opts = {
        transparent_background = true,
        term_color = false,
      },
      styles = {
        keywords = { "bold" },
        functions = { "italic" },
        comments = { "italic" },
        strings = { "italic" },
      },
      integrations = {
        treesitter = true,
        telescope = true,
        bufferline = true,
        which_key = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
