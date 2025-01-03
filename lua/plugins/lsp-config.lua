return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = { "lua_ls","gopls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({

				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "code show hover" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go define" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "go references" })
			vim.keymap.set("n", "<leader>gc", vim.lsp.buf.code_action, { desc = "go code action" })
		end,
	},
}
