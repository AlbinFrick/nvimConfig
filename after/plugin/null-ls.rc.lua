local status, null_ls = pcall(require, "null_ls")
if (not status) then return end


null_ls.setup {
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    end
    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
  sources = {
    null_ls.builtins.formatting.prettier.with({ extra_args = { "--single-quote" } }),
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
}

-- vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")
-- format on save
--vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
--
--      vim.cmd([[
--       augroup Format
--       autocmd! * <buffer>
--       autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
--       augroup END]]
--     )
