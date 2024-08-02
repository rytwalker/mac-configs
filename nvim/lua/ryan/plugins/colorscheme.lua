return {
	{
		"catppuccin/nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				integrations = {
					nvimtree = true,
				},
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = { "italic" },
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
			})
			-- load the colorscheme here
			-- vim.g.nvim_tree_respect_buf_cwd
			-- vim.g.everforest_background = "hard"
			vim.cmd([[colorscheme catppuccin-mocha]])
			--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }):
		end,
	},
}
