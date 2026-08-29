local autocmd = vim.api.nvim_create_autocmd

-- use 3 indent space in .html, lua files
autocmd ({"FileType"}, {
	pattern = { "html", "lua" },
	callback = function()
		vim.bo.tabstop = 3
		vim.bo.shiftwidth = 3
	end
})

-- use 2 indent space in .css files
autocmd ({"FileType"}, {
	pattern = "css",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
	end
})
