return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      ---@param title string|?
      ---@return string
      note_id_func = function(title)
        if title == nil then
          return tostring(os.time())
        end
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      end,

      -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
      -- URL it will be ignored but you can customize this behavior here.
      ---@param url string
      follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({ "open", url }) -- Mac OS
        -- vim.fn.jobstart({"xdg-open", url})  -- linux
      end,

      workspaces = {
        {
          name = "brain",
          path = "~/brain",
        },
      },

      templates = {
        subdir = "templates",
        -- A map for custom variables, the key should be the variable and the value a function
        -- substitutions = {},
      },
      -- disable_frontmatter = function(filename)
      --   local patterns = { "brain/templates/" }
      --   for _, pattern in ipairs(patterns) do
      --     local result = filename.find(pattern)
      --     if result ~= nil then
      --       return true
      --     end
      --   end
      --   return false
      -- end,
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "dailies",
      -- Optional, if you want to change the date format for the ID of daily notes.
      -- date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      -- alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      -- default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil,
    },
    keys = {
      { "<leader>ob", "<Cmd>ObsidianBacklinks<CR>", desc = "Show backlinks" },
      { "<leader>on", "<Cmd>ObsidianNew<CR>", desc = "New note" },
      { "<leader>ot", "<Cmd>ObsidianTemplate<CR>", desc = "Insert template" },
      { "<leader>or", "<Cmd>ObsidianRename<CR>", desc = "Rename note" },
      { "<leader>oq", "<Cmd>ObsidianQuickSwitch<CR>", desc = "Quick switch" },
      {
        "<leader>od",
        "<Cmd>ObsidianToday<CR>",
        desc = "Open today's daily note",
      },
      {
        "<leader>oy",
        "<Cmd>ObsidianYesterday<CR>",
        desc = "Open yesterday's daily note",
      },
      {
        "<leader>om",
        "<Cmd>ObsidianTomorrow<CR>",
        desc = "Open tomorrow's daily note",
      },
      {
        "<leader>oe",
        ":ObsidianExtractNote<CR>",
        desc = "Extract note",
        mode = "v",
      },
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>o", group = "obsidian" },
      },
    },
  },
}
