-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Keep cursor centred
map("n", "G", "Gzz", { noremap = true, silent = true })
map(
  "n",
  "<C-d>",
  "<C-d>zz",
  { noremap = true, silent = true, desc = "Down 1/2 page" }
)
map(
  "n",
  "<C-u>",
  "<C-u>zz",
  { noremap = true, silent = true, desc = "Up 1/2 page" }
)

-- Shortcuts
map(
  "",
  "<leader>h",
  "^",
  { noremap = true, silent = true, desc = "Start of line" }
)
map(
  "",
  "<leader>l",
  "g_",
  { noremap = true, silent = true, desc = "End of line" }
)
map(
  "n",
  "<leader>a",
  ":keepjumps normal! ggVG<cr>",
  { noremap = true, silent = true, desc = "Select all" }
)

-- Toggle autocomplete
local Util = require("lazyvim.util")

-- Toggle Autocomplete with <TAB>
map("n", "<leader>u<tab>", function()
  -- vim.g.autocomplete == nil is treated as true
  vim.g.autocomplete = vim.g.autocomplete == false
  if vim.g.autocomplete then
    Util.warn("Enabled Autocomplete", { title = "Autocomplete (global)" })
  else
    Util.info("Disabled Autocomplete", { title = "Autocomplete (global)" })
  end
  require("cmp").setup({
    enabled = function()
      if vim.api.nvim_get_option_value("buftype", { buf = 0 }) == "prompt" then
        return false
      else
        return vim.g.autocomplete
      end
    end,
  })
end, { desc = "Toggle Autocomplete †" })

-- Prevent "x" from modifying register
map("", "x", '"_x', opts)
map("", "X", '"_X', opts)
map("v", "p", '"_dP', opts) -- stop vim replacing register on v-mode paste

-- Clipboard
map({ "n", "x" }, "cy", '"+y', { noremap = true, desc = "Yank to clipboard" })
map(
  { "n", "x" },
  "cY",
  '"+Y',
  { noremap = true, desc = "Yank till EOL to clipboard" }
)
map(
  { "n", "x" },
  "cp",
  '"+p',
  { noremap = true, desc = "Paste from clipboard" }
)

-- Better indents
map("v", ">", ">gv", { desc = "indent" })
map("v", "<", "<gv", { desc = "unindent" })

-- Move Lines
map("n", "∆", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "˚", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "∆", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "˚", ":m '<-2<cr>gv=gv", { desc = "Move up" })
