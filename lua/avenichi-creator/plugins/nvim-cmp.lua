-- Autocomplete
return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		{ 'L3MON4D3/LuaSnip', version = 'v2.*' },
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},
	config = function ()
		local cmp = require('cmp')
		local luasnip = require('luasnip')

		require('luasnip.loaders.from_vscode').lazy_load()

		cmp.setup({
			snippet = {
				expand = function (args)
					luasnip.lsp_expand(args.body)
				end
			},
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(),
				['<C-n>'] = cmp.mapping.select_next_item(),
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-i>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
				{ name = 'path' },
			}),
		})
	end,
}
