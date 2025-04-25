-- Prevent LSP from overwriting treesitter color settings
-- https://github.com/NvChad/NvChad/issues/1907
vim.highlight.priorities.semantic_tokens = 95 -- Or any number lower than 100, treesitter's priority level

-- Make line numbers default (default: false)
vim.wo.number = false
vim.wo.signcolumn = 'yes'

-- Sync clipboard between OS and Neovim. (default: '')
vim.o.clipboard = 'unnamedplus'

-- Display lines as one long line (default: true)
vim.o.wrap = false

-- Don't show hyphens in diffs
-- vim.opt.fillchars = { diff = ' ' }
vim.opt.fillchars = { fold = ' ', foldopen = '', foldsep = ' ', foldclose = '', diff = ' ' }

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

-- Make diffs nice, and always split vertically
vim.opt.diffopt = { 'internal', 'vertical', 'filler', 'closeoff', algorithm = 'patience', 'iwhiteall' }

-- Case-insensitive searching UNLESS \C or capital in search (default: false)
vim.o.ignorecase = true
-- Smart case (default: false)
vim.o.smartcase = true

-- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.o.scrolloff = 4
vim.o.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)

-- Mode shown in satus line
vim.o.showmode = false

-- Set termguicolors to enable highlight groups (default: false)
vim.opt.termguicolors = true

-- Make indenting smarter again (default: false)
vim.o.smartindent = true

-- lets try longer undo
vim.o.undofile = true -- Save undo history (default: false)

-- Hyphenated words recognized by searches (default: does not include '-')
vim.opt.iskeyword:append '-'

-- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles'

vim.opt.wildmode = { 'longest:full', 'full' }
