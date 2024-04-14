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
      source_selector = {
        winbar = true,
        statusline = true,
      },
      close_if_last_window = false,
    })
    vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal left<CR>", {})
  end,
}
