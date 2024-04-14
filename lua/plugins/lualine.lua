return {
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
}
