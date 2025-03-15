-- The original vimscript version of this might be better https://github.com/inkarkat/vim-mark
return {
    'winter233/neomark.nvim',
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings:
        -- colors = { "#06989a", "#A4E57E", "#FFDB72", "#FF7272", "#FFB3FF", "#9999FF", "#729FCF", "#10B981" },
    },
    keys = {
        {
            '<leader>mm',
            function()
                require('neomark').toggle()
            end,
            desc = 'Mark/Unmark word under cursor',
        },
        {
            '<leader>mc',
            function()
                require('neomark').clear()
            end,
            desc = 'Unmark all words',
        },
        {
            '<leader>mp',
            function()
                require('neomark').prev { recursive = true }
            end,
            desc = 'jump to prev marked word',
        },
        {
            '<leader>mn',
            function()
                require('neomark').next { recursive = true }
            end,
            desc = 'jump to next marked word',
        },
        {
            '<leader>m[',
            function()
                require('neomark').prev { recursive = true, any = true }
            end,
            desc = 'jump to prev any marked word',
        },
        {
            '<leader>m]',
            function()
                require('neomark').next { recursive = true, any = true }
            end,
            desc = 'jump to next any marked word',
        },
    },
}
