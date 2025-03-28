return {
    {
        'f4z3r/gruvbox-material.nvim',
        name = 'gruvbox-material',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            local colors = require('gruvbox-material.colors').get(vim.o.background, 'hard')
            require('gruvbox-material').setup {
                contrast = 'hard',
                customize = function(group, options)
                    if group == 'DiagnosticUnderlineError' then
                        options.link = nil
                        options.undercurl = true
                        options.sp = '#703030'
                    elseif group == 'DiffText' then
                        options.link = nil
                        options.underdashed = true
                        options.fg = nil
                        options.sp = colors.fg1
                        options.bg = colors.bg_diff_blue
                    elseif group == 'DiffDelete' then
                        options.link = nil
                        options.bg = '#181818'
                    end
                    return options
                end,
            }
            local theme = require('gruvbox-material.lualine').theme 'medium'
            -- some theme customization to your liking, for instance:
            -- local g_colors = require("gruvbox-material.colors")
            -- theme.normal["x"] = { fg = colors.bg_statusline1, bg = colors.purple }
            theme.inactive['c'] = { fg = colors.fg1, bg = colors.bg2 }
            require('lualine').setup {
                options = { theme = theme },
            }
            vim.cmd 'colorscheme gruvbox-material'
        end,
    },
    {
        'brenoprata10/nvim-highlight-colors',
        -- Show colours in colour
        opts = {},
    },
}
