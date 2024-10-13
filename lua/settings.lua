local o = vim.o

o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
o.number = true
o.relativenumber = true
o.wrap = false
o.listchars = 'tab:>-,leadmultispace:---+,trail:.'
o.list = true
o.spell = true
o.spelllang = 'en_gb'

vim.cmd.colorscheme('vim')
