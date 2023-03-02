local status, ls = pcall(require, "LuaSnip")
if (not status) then return end

-- ls.config.set_config({
--   history = true,
--   updateevents = "TextChanged, TextChangedI",
--   enable_auto_snippets = true
-- })

require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "./snippets" } })


vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })
