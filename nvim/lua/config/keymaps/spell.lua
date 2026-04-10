local map = vim.keymap.set

map("n", "<Leader>cc", "<cmd>setlocal spell!<CR>", { desc = "Toggle spell check" })
map("n", "<Leader>ce", "<cmd>setlocal spelllang=en<CR>", { desc = "Set spell to English" })
map("n", "<Leader>cr", "<cmd>setlocal spelllang=fr<CR>", { desc = "Set spell to French" })
map("n", "<Leader>.", "z=", { desc = "Spell suggestions" })
