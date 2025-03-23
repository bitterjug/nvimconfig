return {
    'ggandor/leap.nvim',
    config = function()
        vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
        --require('leap').create_default_mappings()
        vim.keymap.set({ 'n', 'x', 'o' }, 'f', '<Plug>(leap-forward)')
        vim.keymap.set({ 'n', 'x', 'o' }, 'F', '<Plug>(leap-backward)')
    end,
}
