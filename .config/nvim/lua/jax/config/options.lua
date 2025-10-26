vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- nvim-tree recommended
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

-- indentation
opt.expandtab = false -- use tabs instead of spaces
opt.tabstop = 2 -- tab width
opt.shiftwidth = 2 -- width for shift operation
opt.shiftround = true -- round indent
opt.smartindent = true

opt.autoread = true
opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.colorcolumn = "80,88" -- line width ruler
opt.completeopt = "menu,menuone,noselect" -- completion menu
opt.cursorline = true -- highlight current line
opt.formatoptions = "tcqjronlm" -- better automatic formatting
opt.ignorecase = true -- ignore case
opt.list = true -- show some invisible characters, e.g., tabs
opt.mouse = "a" -- enable mouse mode
opt.number = true -- show current line number
opt.numberwidth = 2 -- default is 4, too wide
opt.pumblend = 10 -- pseudo-transparency for the popup-menu
opt.pumheight = 10 -- maximum number of items to show in the popup menu
opt.relativenumber = true -- show relative line numbers
opt.scrolloff = 4 -- minimal number of lines above and below the cursor
opt.smartcase = true -- don't ignore case with capitals
opt.spelllang = { "en", "zh_cn" }
opt.splitbelow = true -- place new window below current window
opt.splitright = true -- place new window on the right
opt.swapfile = false -- not needed, improve performance
opt.termguicolors = true -- true color support
opt.textwidth = 80 -- default text width
opt.winminwidth = 5 -- minimum window width
opt.wrap = false -- disable line wrap

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
end
