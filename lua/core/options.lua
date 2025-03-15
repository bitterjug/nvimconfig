-- Make line numbers default (default: false)
vim.wo.number = true

-- Sync clipboard between OS and Neovim. (default: '')
vim.o.clipboard = 'unnamedplus'

-- Display lines as one long line (default: true)
vim.o.wrap = false

-- Don't show hyphens in diffs
vim.opt.fillchars = { diff = ' ' }
