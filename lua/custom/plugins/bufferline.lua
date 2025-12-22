return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function() -- This is the function that runs, AFTER loading
			require("bufferline").setup({
				options = {
					mode = "tabs",
					diagnostics = "nvim_lsp",
				},
				highlights = {
					buffer_selected = {
						italic = false,
					},
					tab_selected = {
						italic = false,
					},
					diagnostic_selected = {
						italic = false,
					},
					error_selected = {
						italic = false,
					},
					error_diagnostic_selected = {
						italic = false,
					},
					warning_selected = {
						italic = false,
					},
					warning_diagnostic_selected = {
						italic = false,
					},
					info_selected = {
						italic = false,
					},
					info_diagnostic_selected = {
						italic = false,
					},
					hint_selected = {
						italic = false,
					},
					hint_diagnostic_selected = {
						italic = false,
					},
				},
			})
			-- Explicit tab navigation
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
		end,
	},
}