return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        on_new_config = function(config, root_dir)
          local env = vim.trim(
            vim.fn.system(
              'cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'
            )
          )
          if string.len(env) > 0 then
            config.settings = config.settings or {}
            config.settings.python = config.settings.python or {}
            config.settings.python.pythonPath = env .. "/bin/python"
          end
        end,
      },
    },
  },
}
