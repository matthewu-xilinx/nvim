vim.opt.termguicolors = true

require("bufferline").setup{
  options = {
    numbers = 'buffer_id',
    hover = {
      enabled = true,
        delay = 150,
        reveal = {'close'}
    }
  }
}
