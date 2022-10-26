local status, harpoon = pcall(require, "harpoon")
if (not status) then return end

local m = require('albinfrick.keymap')


m.nnoremap(';h', function() require("harpoon.ui").toggle_quick_menu() end)
m.nnoremap('öh', function() require("harpoon.ui").toggle_quick_menu() end)
m.nnoremap('<leader>ha', function() require("harpoon.mark").add_file() end)
m.nnoremap('<leader>a', function() require("harpoon.ui").nav_file(1) end)
m.nnoremap('<leader>s', function() require("harpoon.ui").nav_file(2) end)
m.nnoremap('<leader>d', function() require("harpoon.ui").nav_file(3) end)
m.nnoremap('<leader>f', function() require("harpoon.ui").nav_file(4) end)

harpoon.setup {}
