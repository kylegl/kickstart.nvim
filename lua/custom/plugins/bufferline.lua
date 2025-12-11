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
			})
			-- Explicit tab navigation
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
		end,
	},
}