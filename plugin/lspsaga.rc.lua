local m = require('albinfrick.keymap')
local status, saga = pcall(require, "lspsaga")
if (not status) then return end


saga.setup({ ui = { border = "rounded", theme = "round" } })
-- saga.init_lsp_saga {
--   server_filetype_map = {
--     typescript = "typescript",
--     vue = "vuels",
--   }
-- }

local opts = { silent = true }

m.nnoremap(']g', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
m.nnoremap('K', '<Cmd>Lspsaga hover_doc<cr>', opts)
m.nnoremap('gf', '<Cmd>Lspsaga lsp_finder<cr>', opts)
-- m.nnoremap('<C-k>', '<Cmd>Lspsaga signature_help<cr>', opts)
m.nnoremap('gp', '<Cmd>Lspsaga peek_definition<cr>', opts)
m.nnoremap('gr', '<Cmd>Lspsaga rename<cr>', opts)
m.nnoremap('<leader>.', '<Cmd>Lspsaga code_action<cr>', opts)
m.nnoremap('<leader>vd', function() vim.diagnostic.open_float() end, opts)
