-- enable numbering in netrw
vim.api.nvim_create_autocmd("FileType", {
	pattern = "netrw",
	callback = function()
		vim.wo.number = true
		vim.wo.relativenumber = true
	end
})

-- html indent size
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'html',
	callback = function()
		vim.bo.shiftwidth = 3
		vim.bo.tabstop = 3
	end
})

-- css indent size
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'css',
	callback = function()
		vim.bo.shiftwidth = 2
		vim.bo.tabstop = 2
	end
})

-- lua indent size
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'lua',
	callback = function()
		vim.bo.shiftwidth = 3
		vim.bo.tabstop = 3
    end
})

