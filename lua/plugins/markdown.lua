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
    enabled = true,
    event = "VeryLazy",

    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { "magick" },
    },
  },
  {
    "3rd/image.nvim",
    enabled = true,
    event = "VeryLazy",

    dependencies = { "luarocks.nvim" },
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        },
        neorg = {
          enabled = false,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "norg" },
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      tmux_show_only_in_active_window = true,
      kitty_method = "normal",
    },
  },
}
