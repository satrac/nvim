


local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.smartindent = true

-- disable line wrap
opt.wrap = false

opt.iskeyword:append("-") -- treat dashes as part of words

-- Enable mouse mode
opt.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard:append('unnamedplus')

-- Enable break indent
opt.breakindent = true

opt.ttyfast = true

-- Search
opt.incsearch = true

-- Set highlight on search
opt.hlsearch = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- show matching braces
opt.showmatch = true

-- show the status line all the time
opt.laststatus=2


-- line numbers
--opt.relativenumber = true
--vim.wo.number = true
opt.number = true

-- make sure your terminal supports this
opt.termguicolors = true


-- enable syntax colors
opt.syntax = "enable"

-- highlight color column
opt.colorcolumn = "80"

-- highlight current line
opt.cursorline = true

-- only show signcolumn when needed
opt.signcolumn = "auto"

opt.cmdheight = 1

opt.wildmenu = true
opt.wildmode = "list:longest"

opt.title = true

-- leave a file lines off from edges of screen
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

opt.hidden = true
opt.errorbells = false

-- disable backup files
opt.backup = false
opt.swapfile = false

opt.modifiable = true

opt.guicursor =	"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.encoding = "UTF-8"

-- disable showmode because lualine already displays mode
opt.showmode = false

-- undo
--opt.undodir = vim.fn.expand("~/.nvim/undodir")
opt.undodir = "undodir"
opt.undofile = true

opt.backspace = "indent,eol,start"

opt.splitright = true
opt.splitbelow = true

opt.autochdir = false




-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
--vim.o.completeopt = 'menuone,noinsert,noselect'

-- folds
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99



