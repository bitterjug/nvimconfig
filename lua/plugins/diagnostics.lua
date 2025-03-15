-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<leader>do', '<cmd> DiagWindowShow<cr>', { desc = 'Open diagnostics in split' })

return {
    {
        'cseickel/diagnostic-window.nvim',
        requires = { 'MunifTanjim/nui.nvim' },
    },
    {
        'rachartier/tiny-inline-diagnostic.nvim',
        event = 'VeryLazy', -- Or `LspAttach`
        priority = 1000, -- needs to be loaded in first
        config = function()
            require('tiny-inline-diagnostic').setup()
            vim.diagnostic.config { virtual_text = false }
        end,
    },
}
