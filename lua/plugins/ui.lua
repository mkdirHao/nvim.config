return {

	-- start page
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.startify")

			dashboard.section.header.val = {
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                     ]],
				[[       ████ ██████           █████      ██                     ]],
				[[      ███████████             █████                             ]],
				[[      █████████ ███████████████████ ███   ███████████   ]],
				[[     █████████  ███    █████████████ █████ ██████████████   ]],
				[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
				[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
				[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
			}

			alpha.setup(dashboard.opts)
		end,
	},

	--set theme

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight-moon")
		end,
	},

	{ "Mofiqul/dracula.nvim" },

	-- bufferline
	{
		"romgrk/barbar.nvim",

		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
			-- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
			preset = "default",
			sidebar_filetypes = {
				["neo-tree"] = {

					text = " $_& sudo rm -rm /*",
					align = "center", -- no work
				},
			},
			-- maximum_length = 15,
			no_name_title = "new bee",
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},

	-- status line
	{
		--terminal 状态栏
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				theme = "tokyonight",
				always_divide_middle = true,
				globalstatus = true,
			})
		end,
		event = "VimEnter",
	},

	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support
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
			vim.keymap.set("n", "<leader>t", ":Neotree toggle filesystem reveal left<CR>", { desc = "neotree left" })
		end,
	},

	-- terminal

	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",

		version = "*",
		opts = {
			autochdir = true,
		},
		keys = {
			-- suggested keymap
			--{ "<leader>t", "<cmd>ToggleTerm size=20<cr>", desc = "open terminal" },
			{ "<M-1>", "<cmd>ToggleTerm direction=horizontal size=20<cr>", desc = "horizontal Terminal" },
			{ "<M-2>", "<cmd>ToggleTerm direction=vertical size=45<cr>", desc = "vertical Terminal" },
			{ "<M-3>", "<cmd>ToggleTerm direction=float <cr>", desc = "Float Terminal" },
			{ "<M-4>", "<cmd>ToggleTerm direction=tab <cr>", desc = "table Terminal" },
		},
	},

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
					spacing = 4, -- spacing between columns
					align = "center", -- align columns left, center or right
				},
			})
		end,
	},

	-- highlight
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
