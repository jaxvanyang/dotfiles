return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		git = {
			timeout = 1000,
		},
	},
	keys = {
		{
			"<Leader>e",
			function()
				require("nvim-tree.api").tree.toggle()
			end,
			desc = "Toggle Nvim Tree",
		},
	},
}
