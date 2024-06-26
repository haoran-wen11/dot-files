-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flaveour = "mocha",
--       opts = {
--         transparent_background = true,
--         term_color = false,
--       },
--       styles = {
--         keywords = { "bold" },
--         functions = { "italic" },
--         comments = { "italic" },
--         strings = { "italic" },
--       },
--       integrations = {
--         treesitter = true,
--         telescope = true,
--         bufferline = true,
--         which_key = true,
--       },
--     })
--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function()
    -- Default options:
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    })

    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa")
  end,
}
