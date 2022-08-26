local status, nvimterminal = pcall(require, "nvim-terminal")
if (not status) then return end

vim.o.hidden = true
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]
nvimterminal.setup {}
