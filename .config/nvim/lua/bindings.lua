function map(mode, action, result, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, action, result, options)
end

-- better escape
map("i", "jk", "<ESC><CMD>w<CR>", {})

map("n", "<LEADER>e", "<CMD>Explore<CR>", {})
map("n", "<LEADER>a", "<CMD>%y+<CR>", {})

map("n", "gy", '"+y', {})
map("n", "gp", '"+p', {})
map("n", "U", "<C-r>", {})
map("n", "x", '"_x', {})
map("n", "X", '"_d', {})
map("n", "c", '"_c', {})

