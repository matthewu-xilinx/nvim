local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  sort_by = "case_sensitive",
  git = {
    enable = true,
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
  }
}

local function open_nvim_tree()
  local status_ok, nvim_tree_api = pcall(require, "nvim-tree.api")
  if not status_ok then
    return
  end
  nvim_tree_api.tree.open({ focus=false, find_file=true })
end

vim.api.nvim_create_autocmd({"VimEnter"}, {callback = open_nvim_tree})
vim.keymap.set("n", "<leader>t", ":NvimTreeFindFileToggle<CR>", {noremap=true})
