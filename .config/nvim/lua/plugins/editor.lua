return {
    {
    "nvim-telescope/telescope.nvim",
	tag = '0.1.1',
	dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
    "folke/which-key.nvim",
	config = function()
	  require("which-key").setup()
	end,
    },
}
