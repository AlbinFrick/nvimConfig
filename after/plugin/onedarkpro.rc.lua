local status, onedarkpro = pcall(require, 'onedarkpro')
if (not status) then return end

vim.cmd([[ colorscheme onedarkpro ]])
onedarkpro.setup {}
