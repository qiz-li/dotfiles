-- Soft line wrapping
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.list = false

-- Spell check
vim.opt_local.spell = true

-- Custom statusline with word count
vim.opt_local.statusline = table.concat({
  "%1* %{wordcount().words} ",
  "%2*%{&spell?' Spell ':''}",
  "%3* %t ",
  "%3*%M",
})

-- Map keys to move between soft wrapped lines
local map = vim.keymap.set
local opts = { buffer = true }
for _, mode in ipairs({ "n", "v", "o" }) do
  map(mode, "j", "gj", opts)
  map(mode, "k", "gk", opts)
  map(mode, "$", "g$", opts)
  map(mode, "^", "g^", opts)
  map(mode, "0", "g0", opts)
end
map("n", "I", "g^i", opts)
map("n", "A", "g$a", opts)

-- Disable diagnostics for text files
vim.diagnostic.enable(false, { bufnr = 0 })

-- Conceal bold/italic/links
vim.opt_local.conceallevel = 2
