-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- stylua: ignore
local opts = {
  -- clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  clipboard = "",
  autowrite = false,
  -- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  -- completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  ignorecase = true,                       -- ignore case in search patterns
  smartcase = true,                        -- smart case
  mouse = "",                              -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showtabline = 2,                         -- always show tabs
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 500,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 100,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 20,
  sidescrolloff = 16,
  -- hlsearch = false,                        -- highlight all matches on previous search pattern
  incsearch = true,
  backup = false,                          -- creates a backup file
  colorcolumn = "80",
  spelllang = "en_gb",
  spell = true,
  list = true,
  autoread = true                          -- automatically re-read files when they're changed outside of neovim
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.cmd("set listchars=tab:>·,trail:~,extends:>,precedes:<")

vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.g.autocomplete = true
