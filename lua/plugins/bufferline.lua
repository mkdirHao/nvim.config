return {

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
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
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
}
