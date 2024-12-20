-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.shell = "pwsh.exe"
    vim.g.sqlite_clib_path = "C:/Users/Rst.Pie/Tools/sqlite/sqlite3.dll"
end

vim.opt.colorcolumn = "100"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.g.autoformat = false
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.title = true
vim.opt.titlestring = '[nvim] %t %m'
