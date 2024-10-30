-- Formatters support
return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile', },
	config = function()
		local conform = require('conform')

		conform.setup({
			formatters_by_ft = {
				javascriptreact = { 'prettier' },
				typescriptreact = { 'prettier' },
				javascript = { 'prettier' },
				typescript = { 'prettier' },
				html = { 'prettier' },
				css = { 'prettier' },
				scss = { 'prettier' },
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 3000,
			}
		})
	end
}

