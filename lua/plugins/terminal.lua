return {

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {},
		keys = {
			-- suggested keymap
			--{ "<leader>t", "<cmd>ToggleTerm size=20<cr>", desc = "open terminal" },
			{  "<M-1>",  "<cmd>ToggleTerm direction=horizontal size=20<cr>",desc = "horizontal Terminal"},
			{  "<M-2>",  "<cmd>ToggleTerm direction=vertical size=45<cr>",desc = "vertical Terminal"},
			{  "<M-3>",  "<cmd>ToggleTerm direction=float <cr>",desc = "Float Terminal"},
			{  "<M-4>",  "<cmd>ToggleTerm direction=tab <cr>",desc = "table Terminal"},
		},
	},
}
