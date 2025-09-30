return {
    { 'neovim/nvim-lspconfig' },
    { 'mason-org/mason.nvim', config = true },
    'WhoIsSethDaniel/mason-tool-installer.nvim',

    -- Useful status updates for LSP.
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim', opts = {} },

    -- Allows extra capabilities provided by nvim-cmp
    'hrsh7th/cmp-nvim-lsp',
    { -- needs mason and nvim-lspconfig first
        'mason-org/mason-lspconfig.nvim',
        opts = {},
        dependencies = {
            'mason-org/mason.nvim',
            'neovim/nvim-lspconfig',
        },
    },
}
