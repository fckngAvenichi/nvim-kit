-- Highligh words in buffer under the cursor
return {
	'echasnovski/mini.cursorword',
	version = false,
	config = function ()
		require('mini.cursorword').setup({})
	end
}
