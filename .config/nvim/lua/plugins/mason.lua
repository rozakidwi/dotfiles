return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"emmet_language_server",
			"cssls"
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
