local opts = { noremap = true, silent = true }

-- Insert |> pipes
vim.keymap.set('i', '<C-e>.', '<bar>> ', opts)
-- Mark m, move to first nonblank char, insert '|> '
vim.keymap.set('n', '<C-e>.', 'mm_i<bar>><space><esc>`mm-3l', opts)

-- Insert -> arrow in insert mode
vim.keymap.set('i', '<C-e>l', '-> ', opts)

-- Add the word under the cursor to the export list
--  mx mark x
--  yaw yank a word
--  gg to top
--  /(<cr> search for exposing list
--  p paste
--  a,<esc> add a comma
--  :w<cr> save  file to run elm format
--  `x return to mark x
--  Remove mark x
vim.keymap.set('i', '<C-e>x', 'mxyawgg/(<cr>pa,<esc>:w<cr>`xm-', opts)
