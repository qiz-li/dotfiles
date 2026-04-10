-- Stop Netrw from creating [No Name] buffers
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("AutoDeleteNetrwHiddenBuffers", { clear = true }),
  pattern = "netrw",
  callback = function()
    vim.opt_local.bufhidden = "wipe"
  end,
})

-- Hide dotfiles by default
vim.g.netrw_list_hide = [[\(^\|\s\s\)\zs\.\S\+]]

-- Remove the banner
vim.g.netrw_banner = 0

-- Set width
vim.g.netrw_winsize = 25

-- Tree list style
vim.g.netrw_liststyle = 3
