-- Use terminal (Ghostty) true color
vim.opt.termguicolors = true

-- Split bar visible
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#F3F3F3", bg = "#FAFAFA" })

-- Sign column same as background
vim.api.nvim_set_hl(0, "SignColumn", { fg = "#FAFAFA", bg = "#FAFAFA" })

-- Diagnostic sign colors (replaces ALE sign colors)
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#F51818" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#FFD21F" })

-- Statusline colors
vim.api.nvim_set_hl(0, "User1", { bg = "#399EE6", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "User2", { bg = "#E6BA7E", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "User3", { bg = "#F0F0F0" })
