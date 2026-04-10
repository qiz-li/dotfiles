local map = vim.keymap.set

-- Indent and stay selected
map("v", "<C-]>", ">gv", { desc = "Indent right" })
map("v", "<C-[>", "<gv", { desc = "Indent left" })

-- Move selected lines up/down
map("v", "K", ":m '<-2<CR>gv-gv", { silent = true, desc = "Move selection up" })
map("v", "J", ":m '>+1<CR>gv-gv", { silent = true, desc = "Move selection down" })

-- Copy to system pasteboard
map("v", "<C-c>", ":w !pbcopy<CR><CR>", { desc = "Copy to pasteboard" })
