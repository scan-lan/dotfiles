-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  vim.api.nvim_create_augroup("luke_" .. name, { clear = true })
end

-- -- Check if we need to reload the file when it changed
-- vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
--   group = augroup("checktime"),
--   callback = function()
--     if vim.o.buftype ~= "nofile" then
--       vim.cmd("checktime")
--     end
--   end,
-- })
--
-- -- Highlight on yank
-- vim.api.nvim_create_autocmd("TextYankPost", {
--   group = augroup("highlight_yank"),
--   callback = function()
--     vim.highlight.on_yank()
--   end,
-- })

vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("wrap_words"),
  pattern = { "markdown", "typescriptreact", "javascriptreact", "html" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    -- vim.opt_local.breakat
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("md_textwidth"),
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.textwidth = 80
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("md_conceal"),
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.concealcursor = "n"
  end,
})
