return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = {
				light = "latte",
				dark = "mocha",
			},
			show_end_of_buffer = false, -- show the '~' characters after the end of buffers
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
