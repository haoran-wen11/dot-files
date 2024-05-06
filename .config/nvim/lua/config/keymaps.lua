local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

map("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })

-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
-- map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
-- map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
-- map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
-- map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
map("n", "<leader>t", ":TestNearest<CR>", { desc = "Test nearest to the cursor" })
map("n", "<leader>T", ":TestFile<CR>", { desc = "Test file " })

-- delete character without copying
map("n", "x", '"_x')

-- select all
map("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
map("n", "<Leader>o", "o<Esc>^Da", opts)
map("n", "<Leader>O", "O<Esc>^Da", opts)

-- Comment
map("n", "<C-c>", function()
  require("Comment.api").toggle.linewise.count(vim.v.count > 1 and vim.v.count or 1)
end, opts)
map("v", "<C-c>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)

-- Oil
map("n", "\\", "<CMD>Oil<CR>", { desc = "Open parent directory" })
