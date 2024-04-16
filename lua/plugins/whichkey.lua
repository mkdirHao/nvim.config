return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    config = function()
      local wk = require("which-key")
      wk.register({
        d = {
          name = "debug", -- optional group nam-- you can also pass functions!
        },
      }, { prefix = "<leader>" })

      wk.register({
        e = {
          name = "editor", -- optional group nam-- you can also pass functions!
        },
      }, { prefix = "<leader>" })

      wk.register({
        f = {
          name = "file", -- optional group nam-- you can also pass functions!
        },
      }, { prefix = "<leader>" })
      wk.register({
        g = {
          name = "git | go to", -- optional group nam-- you can also pass functions!
        },
      }, { prefix = "<leader>" })
      wk.setup({
        layout = {
          height = { min = 4, max = 25 }, -- min and max height of the columns
          width = { min = 20, max = 50 }, -- min and max width of the columns
          spacing = 4,               -- spacing between columns
          align = "center",           -- align columns left, center or right
        },
      })
    end,
  },
}
