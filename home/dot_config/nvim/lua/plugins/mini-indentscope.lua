local gen_animation = require("mini.indentscope").gen_animation

return {
  "echasnovski/mini.indentscope",
  opts = {
    draw = {
      delay = 10,
      -- animation = gen_animation.none(),
      animation = gen_animation.quadratic({
        easing = "out",
        duration = 10,
      }),
    },
    options = { try_as_border = true },
    symbol = "│",
    -- symbol = "▏",
  },
}
