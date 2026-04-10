-- Settings (leader must be set before lazy.nvim)
require("config.settings")

-- Netrw config (vim.g vars must be set before netrw loads)
require("config.netrw")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins (auto-discovers lua/plugins/*.lua)
require("lazy").setup("plugins", {
  rocks = { enabled = false },
})

-- Theme customizations (after colorscheme loads)
require("config.theme")

-- Statusline
require("config.statusline")

-- Keymaps
require("config.keymaps.general")
require("config.keymaps.buffer")
require("config.keymaps.git")
require("config.keymaps.goyo")
require("config.keymaps.netrw")
require("config.keymaps.spell")
require("config.keymaps.terminal")
require("config.keymaps.visual")
require("config.keymaps.diagnostics")
