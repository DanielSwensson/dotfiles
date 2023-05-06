local global = vim.g
local api = vim.api

global.neoformat_try_node_exe = 1

api.nvim_create_autocmd("BufWritePre", {
  pattern = '*',
  command = 'Neoformat',
})
