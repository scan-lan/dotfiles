local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  keys = {
    {
      "<leader>fb",
      "<cmd>Telescope file_browser path=%:p:h select_buffer=true hidden=true<cr>",
      desc = "Browse files",
    },
  },
  -- change some options
  opts = {
    defaults = {
      vimgrep_arguments = vimgrep_arguments,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        n = {
          ["<C-q>"] = "smart_send_to_qflist",
        },
        i = {
          ["<C-q>"] = "smart_send_to_qflist",
        },
      },
    },
    pickers = {
      find_files = {
        -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
      },
    },
    extensions = {
      file_browser = {
        grouped = true,
        hidden = true,
        hide_parent_dir = true,
      },
    },
  },
}
