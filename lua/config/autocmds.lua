-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local autocmd = vim.api.nvim_create_autocmd
local fn = vim.fn
local augroup = vim.api.nvim_create_augroup
local general = augroup("General", { clear = true })

vim.lsp.buf.format()
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sql",
  callback = function()
    vim.opt_local.tabstop = 4 -- width of a Tab character
    vim.opt_local.shiftwidth = 4 -- width for autoindent
    vim.opt_local.expandtab = true -- use spaces instead of Tab characters
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})
--
-- autocmd({ "InsertLeave" }, {
--   nested = true, -- for format on save
--   callback = function()
--     if vim.bo.filetype ~= "" and vim.bo.buftype == "" and vim.bo.filetype ~= "python" then
--       vim.cmd("silent! w")
--     end
--   end,
--   group = general,
--   desc = "Auto Save",

vim.api.nvim_create_autocmd("FileType", {
  pattern = "yaml",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})
-- })
