local keymap = vim.keymap

------ Normalmode --------

-- Do not yank with d
keymap.set('n', 'd', '"_d')

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
keymap.set('n', '<Space>', '<C-w>w')
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
keymap.set('n', '<Space>d', ':q <CR>')

-- LazyGit
keymap.set('n', '<Space>gg', ':LazyGit<CR>')

------ Insertmode --------

-- Remap kj to ESC
keymap.set('i', 'kj', '<ESC>')
