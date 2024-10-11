return {
  "https://gitlab.com/schrieveslaach/sonarlint.nvim",
  opts = {
    server = {
      cmd = {
        "sonarlint-language-server",
        -- Ensure that sonarlint-language-server uses stdio channel
        "-stdio",
        "-analyzers",
        -- paths to the analyzers you need, using those for python and java in this example
        -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
        -- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
        vim.fn.expand(
          "/Users/luke.scanlan/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjs.jar"
        ),
        vim.fn.expand(
          "/Users/luke.scanlan/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjava.jar"
        ),
      },
    },
    filetypes = {
      -- Tested and working
      -- "python",
      -- "cpp",
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact",
      "js",
      "java",
    },
  },
}
