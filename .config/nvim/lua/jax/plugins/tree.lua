return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = true,
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
