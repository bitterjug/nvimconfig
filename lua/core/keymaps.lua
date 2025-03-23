-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local function opts(desc)
    if desc then
        return { noremap = true, silent = true, desc = desc }
    else
        return { noremap = true, silent = true }
    end
end

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts())
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts())
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts())
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts())

vim.api.nvim_create_user_command('Q', 'q', { bang = true })
vim.api.nvim_create_user_command('QA', 'qa', { bang = true })
vim.api.nvim_create_user_command('Qa', 'qa', { bang = true })
vim.api.nvim_create_user_command('WQ', 'wq', { bang = true })
vim.api.nvim_create_user_command('Wq', 'wq', { bang = true })

-- Save with control-s
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>', opts())
vim.keymap.set('i', '<C-s>', '<cmd>w<cr>', opts())

-- Search for the current selection using <space>/
vim.keymap.set('v', '<leader>/', '"vy/<c-r>v<cr>', opts 'Search for selection')
