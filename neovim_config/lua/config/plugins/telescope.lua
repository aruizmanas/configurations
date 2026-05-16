return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				mappings = {
					n = {
						["q"] = actions.close,
					},
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
						["<Esc>"] = actions.close,
					},
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						preview_width = 0.6, -- 60% of width for preview
					},
				},
				preview = {
					treesitter = false,
				},
			},
		})
	end,
}
