local map = vim.keymap.set

-- Fugitive
map("n", "<Leader>gs", "<cmd>G<CR>", { desc = "Git status" })
map("n", "<Leader>gc", "<cmd>Git commit<CR>", { desc = "Git commit" })
map("n", "<Leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })

-- Gitgutter
map("n", "<Leader>gh", "<cmd>GitGutterLineHighlightsToggle<CR>", { silent = true, desc = "Toggle git diff highlights" })
