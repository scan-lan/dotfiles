return {
  {
    "MeanderingProgrammer/markdown.nvim",
    opts = {
      bullet = {
        -- Turn on / off list bullet rendering
        enabled = true,
        -- Replaces '-'|'+'|'*' of 'list_item'
        icons = { "● ", "○ ", "◆ ", "◇ " },
        -- Highlight for the bullet icon
        highlight = "RenderMarkdownBullet",
      },
      code = {
        -- Turn on / off code block & inline code rendering
        enabled = true,
        -- Turn on / off any sign column related rendering
        sign = true,
        -- Determines how code blocks & inline code are rendered:
        --  none:     disables all rendering
        --  normal:   adds highlight group to code blocks & inline code, adds padding to code blocks
        --  language: adds language icon to sign column if enabled and icon + name above code blocks
        --  full:     normal + language
        style = "full",
        -- Determines where language icon is rendered:
        --  right: right side of code block
        --  left:  left side of code block
        position = "right",
        -- An array of language names for which background highlighting will be disabled
        -- Likely because that language has background highlights itself
        disable_background = { "diff", "mermaid" },
        -- Width of the code block background:
        --  block: width of the code block
        --  full:  full width of the window
        width = "full",
        -- Amount of padding to add to the left of code blocks
        left_pad = 0,
        -- Amount of padding to add to the right of code blocks when width is 'block'
        right_pad = 0,
        -- Minimum width to use for code blocks when width is 'block'
        min_width = 0,
        -- Determins how the top / bottom of code block are rendered:
        --  thick: use the same highlight as the code body
        --  thin:  when lines are empty overlay the above & below icons
        border = "thin",
        -- Used above code blocks for thin border
        above = "▄",
        -- Used below code blocks for thin border
        below = "▀",
        -- Highlight for code blocks
        highlight = "RenderMarkdownCode",
        -- Highlight for inline code
        highlight_inline = "RenderMarkdownCodeInline",
      },
    },
  },
  {
    "Tweekism/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
