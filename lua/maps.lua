local keymap = vim.keymap

------ Global --------

-- Set leader key
vim.g.mapleader = ' '

------ Normalmode --------

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>', { silent = true })

-- Splits
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-S-h>', '<C-w>>')
keymap.set('n', '<C-S-l>', '<C-w><')
keymap.set('n', '<C-S-k>', '<C-w>+')
keymap.set('n', '<C-S-j>', '<C-w>-')


-- Close window
keymap.set('n', '<leader>x', ':q <CR>')
-- Close all windows/panes
keymap.set('n', '<leader>xa', ':qa <CR>')

-- LazyGit
keymap.set('n', '<leader>gg', ':LazyGit<CR>')

-- Force Prettier formatting
keymap.set('n', '<leader>pf', ':Prettier<CR>')

-- Toggle line Comment
keymap.set('n', '<leader>m', ':CommentToggle<CR>')
keymap.set('v', '<leader>m', ":'<,'>CommentToggle<CR>")

-- Auto complete code suggestion
keymap.set('n', '<leader>.', ':lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>d', ':lua vim.diagnostic.open_float()<CR>')

------ Insertmode --------

-- Remap kj to ESC
keymap.set('i', 'kj', '<ESC>')


------ Terminalmode --------

-- Remap kj to <C-\><C-n>
keymap.set('t', '<S-k><S-j>', '<C-\\><C-n>')
