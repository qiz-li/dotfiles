vim.opt.statusline = table.concat({
  "%1* %v ",                              -- Column number
  "%2*%{&spell?' Spell ':''}",            -- Spell check indicator
  "%3* %t ",                              -- Short file name
  "%3*%M",                                -- Modified flag
})
