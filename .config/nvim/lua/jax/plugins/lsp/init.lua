return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function(_, _)
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local servers = {
			"bashls",
			"clangd",
			"cssls",
			"html",
			"jsonls",
			"lua_ls",
			"marksman",
			"pyright",
			"rust_analyzer",
			"ts_ls",
			"yamlls",
		}

		vim.lsp.config('*', {
			capabilities = capabilities,
		})
		vim.lsp.enable(servers)
	end,
	keys = {
		{
			"<Leader>d",
			vim.diagnostic.open_float,
			desc = "Show diagnostics of current line in a floating window",
		},
		{
			"[d",
			vim.diagnostic.goto_prev,
			desc = "Move to the previous diagnostic",
		},
		{
			"]d",
			vim.diagnostic.goto_next,
			desc = "Move to the next diagnostic",
		},
		{
			"<Leader>r",
			vim.lsp.buf.rename,
			desc = "LSP rename",
		},
		{
			"<Leader>F",
			vim.lsp.buf.format,
			desc = "LSP format",
		},
	},
}
