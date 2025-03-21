local opts = { noremap = true, silent = true }

-- Insert |> pipes
vim.keymap.set('i', '<C-e>.', '<bar>> ', opts)
vim.keymap.set('n', '<C-e>.', 'mm_i<bar>><space><esc>`mlll', opts)
