return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = { "", "" }, -- disable buffer separator in transparent mode
      show_close_icon = false,
      diagnostics = "nvim_lsp",
    },
  },
  keys = {
    { "<S-l>", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
    { "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "Close other buffers" },
    { "<leader>bb", "<cmd>BufferLinePick<CR>", desc = "Pick buffer" },
    { "<leader>bc", "<cmd>BufferLinePickClose<CR>", desc = "Pick close" },
  },
}
