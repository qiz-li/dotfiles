local map = vim.keymap.set

-- Switch between buffers
map("n", "<Leader>h", "<cmd>bp<CR>", { desc = "Previous buffer" })
map("n", "<Leader>l", "<cmd>bn<CR>", { desc = "Next buffer" })

-- Delete buffer
map("n", "<Leader>bq", "<cmd>bd<CR>", { desc = "Delete buffer" })

-- Resize windows
map("n", "<Leader>bk", "<cmd>resize -5<CR>", { desc = "Decrease window height" })
map("n", "<Leader>bj", "<cmd>resize +5<CR>", { desc = "Increase window height" })
map("n", "<Leader>bh", "<cmd>vertical resize -5<CR>", { desc = "Decrease window width" })
map("n", "<Leader>bl", "<cmd>vertical resize +5<CR>", { desc = "Increase window width" })
