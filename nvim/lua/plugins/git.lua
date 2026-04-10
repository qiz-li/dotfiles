return {
  {
    "airblade/vim-gitgutter",
    config = function()
      vim.g.gitgutter_sign_added = "|"
      vim.g.gitgutter_sign_modified = "|"
      vim.g.gitgutter_sign_removed = "_"
      vim.g.gitgutter_sign_removed_first_line = "‾"
      vim.g.gitgutter_sign_removed_above_and_below = "-"
      vim.g.gitgutter_sign_modified_removed = "_"
    end,
  },
  { "tpope/vim-fugitive" },
}
