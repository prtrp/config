return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup()
	end,
	opts = {
		transparent= true, 
	},
}

