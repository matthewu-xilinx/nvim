local status_ok, ls = pcall(require, "luasnip")
if not status_ok then
  return
end


require("luasnip.loaders.from_lua").load()

local keymap = vim.keymap

keymap.set({"i"}, "<C-K>", function() require("luasnip").expand() end)
keymap.set({"i", "s"}, "<C-L>", function() require("luasnip").jump(1) end)
keymap.set({"i", "s"}, "<C-J>", function() require("luasnip").jump(-1) end)
keymap.set({"i", "s"}, "<C-E>", function()
  ls = require("luasnip")
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)
