-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("rsp_cmds", { clear = true })

autocmd("Filetype",
    {
        pattern = { "*" },
        callback = function ()
            vim.opt.formatoptions:remove("r")
            vim.opt.formatoptions:remove("o")
        end,
        group = "rsp_cmds",
        desc = "Don't continue comments on enter or 'o'",
    }
)
