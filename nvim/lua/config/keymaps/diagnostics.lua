local map = vim.keymap.set

-- Toggle diagnostics (replaces ALE toggle)
map("n", "<Leader>a", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, desc = "Toggle diagnostics" })
