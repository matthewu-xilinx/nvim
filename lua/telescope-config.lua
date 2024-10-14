local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.load_extension('fzf')

local status_ok, trouble = pcall(require, "trouble.sources.telescope")
if not status_ok then
  return
end

telescope.setup({
  defaults = {
    mappings = {
        i = { ["<c-t>"] = trouble.open },
        n = { ["<c-t>"] = trouble.open },
    }
  }
})
