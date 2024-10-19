vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {pattern='*.p4', command='set filetype=p4'})
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {pattern='*.mlist', command='set filetype=yaml'})
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {pattern='*.testspec', command='set filetype=yaml'})
