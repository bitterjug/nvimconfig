return {
    'f4z3r/gruvbox-material.nvim',
    name = 'gruvbox-material',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require('gruvbox-material').setup {
            contrast = 'hard',
        }
        local theme = require('gruvbox-material.lualine').theme 'medium'
        -- some theme customization to your liking, for instance:
        -- local g_colors = require("gruvbox-material.colors")
        -- local colors = g_colors.get(vim.o.background, "medium")
        -- theme.normal["x"] = { fg = colors.bg_statusline1, bg = colors.purple }
        require('lualine').setup {
            options = { theme = theme },
        }
        vim.cmd 'colorscheme gruvbox-material'
    end,
}
