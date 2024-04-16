-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- VSCODE KEYMAPS
if vim.g.vscode then
  local vscode = require("vscode-neovim")
  vim.api.nvim_set_keymap(
    "n",
    "?",
    [[<Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>]],
    { noremap = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-?>",
    [[<Cmd>call VSCodeNotify('editor.actions.findWithArgs', { 'searchString': expand('<cword>')})<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap("n", "gc", "<Plug>VSCodeCommentary", {})
  vim.api.nvim_set_keymap("x", "gc", "<Plug>VSCodeCommentary", {})
  vim.api.nvim_set_keymap("o", "gc", "<Plug>VSCodeCommentary", {})
  vim.api.nvim_set_keymap("n", "gcc", "<Plug>VSCodeCommentaryLine", {})
  vim.api.nvim_set_keymap("n", "<C-=>", ":set invrelativenumber<CR>", { noremap = true })
  vim.api.nvim_set_keymap(
    "n",
    "<C-j>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "x",
    "<C-j>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-k>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "x",
    "<C-k>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-h>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "x",
    "<C-h>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-l>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "x",
    "<C-l>",
    [[<Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<Space>",
    [[<Cmd>call VSCodeNotify('whichkey.show')<CR>]],
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    "x",
    "<Space>",
    [[<Cmd>call VSCodeNotify('whichkey.show')<CR>]],
    { noremap = true, silent = true }
  )
end
