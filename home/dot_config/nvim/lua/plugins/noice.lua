return {
  -- https://github.com/folke/noice.nvim
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          -- Set not show a message if hover is not available
          -- ex: shift+k on Typescript code
          silent = true,
        },
      },
      -- cmdline = {
      --   enabled = false,
      -- },
      -- presets = {
      --   command_palette = false,
      -- },
    },
  },
}
