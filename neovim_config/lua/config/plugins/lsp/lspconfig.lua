--print("DEBUG: lspconfig.lua file is being read")

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- print("DEBUG: lspconfig.lua config function called")
		require("lspconfig")
		-- Ensure mason is set up before mason-lspconfig
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "cssls", "eslint", "html", "jsonls", "ts_ls", "pyright", "clangd" },
			automatic_enable = true,
		})
	end,
}
