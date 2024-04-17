return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
       position = "left",
        width = 30,
      },
      source_selector = {
        winbar = true,
        statusline = true,
      },
      close_if_last_window = false,
    })
    vim.keymap.set("n", "<leader>t", ":Neotree toggle filesystem reveal left<CR>", {desc="neotree left"})
  end,
}
