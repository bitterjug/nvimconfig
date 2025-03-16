-- Make line numbers default (default: false)
vim.wo.number = true

-- Sync clipboard between OS and Neovim. (default: '')
vim.o.clipboard = 'unnamedplus'

-- Display lines as one long line (default: true)
vim.o.wrap = false

-- Don't show hyphens in diffs
vim.opt.fillchars = { diff = ' ' }

-- Enable mouse mode (default: '')
vim.o.mouse = 'a'

-- Smart indenting for c like languages
vim.o.smartindent = true
vim.o.autoindent = true -- Copy indent from current line when starting new one (default: true)

-- wrapped lines are indented
vim.o.breakindent = true
vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation (default: 8)
vim.o.tabstop = 4 -- Insert n spaces for a tab (default: 8)
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
