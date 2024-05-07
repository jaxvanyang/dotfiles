return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function(_, _)
		local telescope = require("telescope")
		local telescope_actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = telescope_actions.move_selection_next,
						["<C-k>"] = telescope_actions.move_selection_previous,
					},
				},
			},
		})

		telescope.load_extension("fzf")
	end,
	cmd = "Telescope",
	keys = {
		{
			"<Leader>ff",
			":Telescope find_files<CR>",
			desc = "Telescope: find files",
		},
		{
			"<Leader>fl",
			":Telescope live_grep<CR>",
			desc = "Telescope: find lines",
		},
		{
			"<Leader>fb",
			":Telescope buffers<CR>",
			desc = "Telescope: find buffers",
		},
		{
			"<Leader>fh",
			":Telescope help_tags<CR>",
			desc = "Telescope: find help tags",
		},
		{
			"<Leader>fk",
			":Telescope keymaps<CR>",
			desc = "Telescope: find keymaps",
		},
	},
}
