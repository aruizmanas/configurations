vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Exit insert mode
map("i", "jh", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Moving in splits
map("n", "gh", "<C-w>h")
map("n", "gk", "<C-w>k")
map("n", "gj", "<C-w>j")
map("n", "gl", "<C-w>l")

-- Resizing
map("n", "rh", "<C-w><5")
map("n", "rl", "<C-w>>5")
map("n", "rk", "<C-w>+5")
map("n", "rj", "<C-w>-5")

-- Exit terminal mode with Esc
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Optional: Move between windows easily from terminal mode
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Move left" })
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Move down" })
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Move up" })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Move right" })

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Fuzzy find opened files" })
map("n", "<leader>fs", "<CMD>Telescope git_status<CR>", { desc = "Show git file diffs" })
map("n", "<leader>fc", "<CMD>Telescope git_commits<CR>", { desc = "Browse git commits" })

map("n", "<leader>d", vim.diagnostic.open_float)

-- This will run every time an LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf, noremap = true, silent = true }

		-- Debug to confirm it's working
		-- print("LSP attached to buffer " .. ev.buf)

		-- Your Mappings
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})
