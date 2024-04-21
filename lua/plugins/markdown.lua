return {

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>ep",
        --ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },
    config = function()
      vim.cmd([[do FileType]])
    end,
  },
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
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "paste image in md" },
    },
  },

  -- img preview 
  -- but have some mistake in tmux
  -- it only work in kitty 
  {
    "vhyrro/luarocks.nvim",
    enabled = false,
    event = "VeryLazy",

    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { "magick" },
    },
  },
  {
    "3rd/image.nvim",
    enabled = false,
    event = "VeryLazy",

    dependencies = { "luarocks.nvim" },
    config = function()
      -- ...
      require("image").setup({
        integrations = {
          markdown = {
            resolve_image_path = function(document_path, image_path, fallback)
              -- document_path is the path to the file that contains the image
              -- image_path is the potentially relative path to the image. for
              -- markdown it's `![](this text)`

              -- you can call the fallback function to get the default behavior
              return fallback(document_path, image_path)
            end,
          },
        },
      })
    end,
  },
}
