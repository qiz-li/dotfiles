return {
  {
    "junegunn/limelight.vim",
    cmd = "Limelight",
  },
  {
    "junegunn/goyo.vim",
    cmd = "Goyo",
    dependencies = { "junegunn/limelight.vim" },
    config = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoEnter",
        callback = function()
          vim.opt.cursorline = false
          vim.cmd("Limelight 0.7")
        end,
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoLeave",
        callback = function()
          -- Re-apply colorscheme and custom highlights
          -- Using dofile() instead of source to bypass Lua require() caching
          vim.g.ayucolor = "light"
          vim.cmd.colorscheme("ayu")
          dofile(vim.fn.stdpath("config") .. "/lua/config/theme.lua")
          dofile(vim.fn.stdpath("config") .. "/lua/config/statusline.lua")
        end,
      })
    end,
  },
}
