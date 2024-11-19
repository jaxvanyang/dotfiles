return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function(_, _)
		local lspconfig = require("lspconfig")
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

		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
			})
		end
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
	},
}
