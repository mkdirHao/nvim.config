return {

	{
		"rmagatti/auto-session",
		enabled = false,
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
				session_lens = {
					buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
					load_on_setup = false,
					theme_conf = { border = true },
					previewer = false,
					auto_restore_enabled = false,
					auto_save_enabled = true,
				},
				vim.keymap.set("n", "<leader>fp", "<cmd>Autosession search<cr>", {
					desc = "file project | sessions",
					noremap = true,
				}),
			})
		end,
	},
}
