local status, harpoon = pcall(require, "harpoon")
if (not status) then return end



vim.keymap.set('n', ';h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', 'öh', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<leader>a', ':lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<leader>s', ':lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<leader>d', ':lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set('n', '<leader>f', ':lua require("harpoon.ui").nav_file(4)<CR>')

harpoon.setup {}
