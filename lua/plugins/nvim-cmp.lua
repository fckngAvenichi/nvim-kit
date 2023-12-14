-- Autocompletion
return {
	-- https://github.com/j-hui/fidget.nvim
	'hrsh7th/nvim-cmp',
	dependencies = {
		-- Snippet Engine
		-- https://github.com/L3MON4D3/LuaSnip
		{ 'L3MON4D3/LuaSnip' },
		-- https://github.com/saadparwaiz1/cmp_luasnip
		{ 'saadparwaiz1/cmp_luasnip' },

		-- LSP Autocompletion
		-- https://github.com/hrsh7th/cmp-nvim-lsp
		{ 'hrsh7th/cmp-nvim-lsp' },

		-- Additional Snippets
		-- https://github.com/rafamadriz/friendly-snippets
		{ 'rafamadriz/friendly-snippets' },
		-- https://github.com/hrsh7th/cmp-buffer
		{ 'hrsh7th/cmp-buffer' },
		-- https://github.com/hrsh7th/cmp-path
		{ 'hrsh7th/cmp-path' },
		-- https://github.com/hrsh7th/cmp-cmdline
		{ 'hrsh7th/cmp-cmdline' },

		-- Autoclose (,{ and other
		-- https://github.com/windwp/nvim-autoparirs
		{ 'windwp/nvim-autopairs', event = 'InsertEnter' },
	},
	config = function ()
		local cmp = require('cmp')
		local luasnip = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function (args)
					luasnip.lsp_expand(args.body)
				end
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
				{ name = 'path' },
			}),
		})

		require('nvim-autopairs').setup({
			fast_wrap = {}
		})
		-- If you want insert `(` after select function or method item
		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
		cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

		-- Enable friendly snippets
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
