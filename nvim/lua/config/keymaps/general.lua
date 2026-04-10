local map = vim.keymap.set

-- Save or quit
map("n", "<Leader>w", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<Leader>s", "<cmd>up<CR>", { desc = "Save" })

-- Reload config (clears Lua module cache first)
map("n", "<Leader>r", function()
  for name, _ in pairs(package.loaded) do
    if name:match("^config") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end
  vim.cmd.source(vim.env.MYVIMRC)
end, { desc = "Reload config" })
