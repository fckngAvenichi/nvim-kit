-- LSP
return {
	'neovim/nvim-lspconfig',
	event = { 'BufRead', 'BufNewFile' },
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		{ 'antosha417/nvim-lsp-file-operations', config = true },
		{ 'folke/lazydev.nvim',                  opts = {} },
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')

		mason.setup({});
		mason_lspconfig.setup({
			ensure_installed = {
				'ts_ls',
				'html',
				'cssls',
				'lua_ls',
				'emmet_ls',
				'tailwindcss',
			}
		})
		mason_tool_installer.setup({
			ensure_installed = {
				'prettier',
				'eslint_d',
			}
		})

		local lspconfig = require('lspconfig')
		local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

		local signs = { Error = 'E', Warn = 'W', Hint = 'H', Info = 'I' }
		for type, icon in pairs(signs) do
			local hl = 'DiagnosticSign' .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
		end

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = lsp_capabilities,
				})
			end
		})

		lspconfig.lua_ls.setup({
			settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
		})

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
				vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', '<leader>ls', ':LspRestart<CR>', opts)
			end,
		})
	end
}
