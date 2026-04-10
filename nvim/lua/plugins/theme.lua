return {
  "ayu-theme/ayu-vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.ayucolor = "light"
    vim.cmd.colorscheme("ayu")
  end,
}
