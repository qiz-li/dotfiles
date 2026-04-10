local map = vim.keymap.set

map("n", "<Leader>tt", "<cmd>bel sp term://zsh<CR>i", { desc = "Open terminal" })
map("t", "<Leader>tt", [[<C-\><C-n><cmd>q!<CR>]], { desc = "Close terminal" })
