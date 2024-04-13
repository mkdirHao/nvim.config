return {



	 {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>mp",
        --ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },
    config = function()
      vim.cmd([[do FileType]])
    end,
  }
  ,
  -- img paste in markdown
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      -- add options here
      -- or leave it empty to use the default settings
      --dir_path = "assets", ---@type string
      default = {
        -- file and directory options
        dir_path = "img", ---@type string
        file_name = "%Y-%m-%d-%H-%M-%S", ---@type string
        use_absolute_path = false, ---@type boolean
        relative_to_current_file = true, ---@type boolean
      },
    },

    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  },

}
