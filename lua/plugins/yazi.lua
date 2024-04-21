return {

	---@type LazySpec
	{
		"mikavilpas/yazi.nvim",
		enable = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		event = "VeryLazy",
		keys = {
			{
				-- 👇 choose your own keymapping
				"<leader>fy",
				function()
					require("yazi").yazi()
				end,
				desc = "open the yazi",
			},
		},
		---@type YaziConfig
		opts = {
			open_for_directories = true,
		},
	},
}
