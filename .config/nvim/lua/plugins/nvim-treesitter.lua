return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	init = function()
		require("nvim-treesitter").install({
			"bash",
			"cpp",
			"css",
			"fish",
			"html",
			"java",
			"javascript",
			"json",
			"just",
			"latex",
			"make",
			"python",
			"ruby",
			"rust",
			"toml",
			"typst",
			"zsh",
		})
	end,
}
