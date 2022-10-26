local status, onedarkpro = pcall(require, 'onedarkpro')
if (not status) then return end

vim.cmd([[ colorscheme onedarkpro ]])
vim.cmd [[hi VimwikiLink term=underline ctermfg=cyan guifg=cyan gui=underline]]
onedarkpro.setup {}
