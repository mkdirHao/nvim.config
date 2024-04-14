return {

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      -- Bufferline
      require("bufferline").setup {
        options = {
          mode = 'buffers',
          -- diagnostics = 'coc',
          offsets = {
            {
              filetype = "neo-tree",
              text = "Explorer",
              highlight = "Directory",
              separator = true,
            }
          },
        },
      }
    end,
  }


}
