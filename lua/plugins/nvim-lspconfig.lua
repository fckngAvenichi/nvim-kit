-- LSP Support
return {
	-- LSP Configuration
	-- https://github.com/neovim/nvim-lspconfig
	'neovim/nvim-lspconfig',
	dependencies = {
		-- LSP Managers
		-- https://github.com/williamboman/mason.nvim
		{ 'williamboman/mason.nvim' },
		-- https://github.com/williamboman/mason-lspconfig.nvim
		{ 'williamboman/mason-lspconfig.nvim' },
	},
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
			ensure_installed = {
				'lua_ls',
				'html',
				'cssls',
				'tsserver',
				'emmet_ls',
			}
		})

		local lspconfig = require('lspconfig')
		local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

		-- Setup all the LSP servers
		require('mason-lspconfig').setup_handlers({
			function (server_name)
				lspconfig[server_name].setup({
					capabilities = lsp_capabilities,
				})
			end
		})

		-- Lua LSP settings
		lspconfig.lua_ls.setup({
			-- Set 'vim' global
			settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
		})
	end
}
