return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					-- you can add regular telescope config
					-- that you want to apply on this picker only
					layout_config = {
						horizontal = {
							preview_width = 0.52,
							results_width = 0.48,
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc="find files"})
			vim.keymap.set("n", "<leader>ft", builtin.live_grep,{desc="find text"})
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {desc="find old files"})

			require("telescope").load_extension("ui-select")
		end,
	},
}
