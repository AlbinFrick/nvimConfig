local m = require('albinfrick.keymap')

------ Global --------

-- Set leader key
vim.g.mapleader = ' '

------ Normalmode --------

-- Increment/decrement
m.nnoremap('+', '<C-a>')
m.nnoremap('-', '<C-x>')

-- Select all
m.nnoremap('<C-a>', 'gg<S-v>G')

-- New tab
m.nnoremap('te', ':tabedit<CR>')

-- Splits
m.nnoremap('ss', ':split<Return><C-w>w')
m.nnoremap('sv', ':vsplit<Return><C-w>w')

-- Move window
m.nnoremap('sh', '<C-w>h')
m.nnoremap('sj', '<C-w>j')
m.nnoremap('sk', '<C-w>k')
m.nnoremap('sl', '<C-w>l')

-- Resize window
m.nnoremap('<C-S-h>', '<C-w>>')
m.nnoremap('<C-S-l>', '<C-w><')
m.nnoremap('<C-S-k>', '<C-w>+')
m.nnoremap('<C-S-j>', '<C-w>-')

-- Save file
m.nnoremap('<leader>sf', ':w <CR>')
-- Close window
m.nnoremap('<leader>x', ':q <CR>')
-- Close all windows/panes
m.nnoremap('<leader>q', ':qa <CR>')

-- LazyGit
m.nnoremap('<leader>lg', ':LazyGit<CR>')


-- Toggle line Comment
m.nnoremap('<leader>m', ':CommentToggle<CR>')
m.vnoremap('<leader>m', ":'<,'>CommentToggle<CR>")

-- Open diagnostic in floating window
m.nnoremap('<leader>p', ':lua vim.diagnostic.open_float()<CR>')
-- Jump to definitions
m.nnoremap('gd', ':lua vim.lsp.buf.definition()<CR>')

-- NvimTree
m.nnoremap('<leader>e', ':NvimTreeToggle<CR>')

-- Save session (WARNING: This will overwrite last session file)
m.nnoremap('<leader>ms', ':mksession! ~/vimsession.vim<CR>')
-- Load session
m.nnoremap('<leader>ls', ':so ~/vimsession.vim<CR>')


m.nnoremap('<leader>t', ':lua NTGlobal["terminal"]:toggle()<cr>')
------ Insertmode --------

-- Remap kj to ESC
m.inoremap('kj', '<ESC>')


------ Terminalmode --------

-- Remap kj to <C-\><C-n>
m.tnoremap('<S-k><S-j>', '<C-\\><C-n>')
