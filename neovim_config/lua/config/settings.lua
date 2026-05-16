local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = ""
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.wildignorecase = true
o.ignorecase = true
o.smartcase = false
o.wildmode = "longest:full,full"
o.completeopt = { "menuone", "noselect", "noinsert" }
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.tm = 500 -- timeout one key command
o.wildoptions = "pum"
o.colorcolumn = "100"
o.swapfile = false
o.hlsearch = true
o.incsearch = true
o.scrolloff = 15
o.textwidth = 99

-- Disable the creation of backup files (the ones ending in ~)
vim.opt.backup = false
vim.opt.writebackup = false
-- Disable swap files (the .swp files)
vim.opt.swapfile = false
-- Optional: Disable persistent undo if you don't want .un~ files
vim.opt.undofile = false

-- Define a highlight group (e.g., Red background for trailing spaces)
vim.api.nvim_set_hl(0, "TrailingSpace", { bg = "#e06c75" })
-- Apply the highlight to spaces at the end of lines
vim.fn.matchadd("TrailingSpace", [[\s\+$]])
