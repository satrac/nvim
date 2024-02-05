local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- undotree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- clear highlights from searches
keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Netrw keymaps
keymap.set('n', '<leader>E', ':E<CR>', { desc = '[E]xplore' })
keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = "[E]xplore"} )

-- pageup/pagedown
-- Auto centre after page up and down
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set({ 'n', 'v'}, '<PageUp>', '<C-u>')
keymap.set({ 'n', 'v'}, '<PageDown>', '<C-d>')

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- fix home/end keys in all modes
--nmap OH <home>
--cmap OH <home>
--imap OH <home>
--" move cursor one more char to right in normal mode
--nmap OF <end>l
--cmap OF <end>
--imap OF <end>


--" move cursor one more char to right in normal mode
--nmap OF <end>l
--cmap OF <end>
--imap OF <end>


-- Insert mode: emacs-like navigation (Ctrl-A, Ctrl-E)
--imap('<c-a>', '<c-o>^', { silent = true })  -- beginning-of-line
--imap('<c-e>', '<c-o>$', { silent = true })  -- end-of-line

--imap('<c-b>', '<c-o>B', { silent = true })  -- words backward
--imap('<c-f>', '<c-o>W', { silent = true })  -- words forward

-- Quick map to normal mode from insert mode
--vim.keymap.set('i', ';;', '<Esc>')

-- Keep navigation centered while searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- vim.keymap.set('n', 'G', 'Gzz')

-- Buffer keymaps
keymap.set('n', '<leader>bn', ':bn<CR>', { desc = '[B]uffer [N]ext' })
keymap.set('n', '<leader>bp', ':bp<CR>', { desc = '[B]uffer [P]revious' })
keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[B]uffer [D]elete' })

-- Navigate vim panes better
-- already set in tmux-navigator
--keymap.set('n', '<c-k>', ':wincmd k<CR>')
--keymap.set('n', '<c-j>', ':wincmd j<CR>')
--keymap.set('n', '<c-h>', ':wincmd h<CR>')
--keymap.set('n', '<c-l>', ':wincmd l<CR>')

keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
keymap.set('n', '<Leader>sm', "<Cmd>lua require('maximize').toggle()<CR>", opts)

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- commenting
-- uses a comments plugin
keymap.set({"n", "v"}, "<C-_>", "gcc", { noremap = false })

-- allow '-' to open the parent directory in netrw
--nnoremap <silent> - :e %:h<cr>
vim.keymap.set("n", "-", ":e %:h<CR>", { noremap = true, silent = true })


-- Use Shift H and Shift L to move to beginning and end of line
vim.keymap.set("n", "<s-h>", "0", { noremap = true })
vim.keymap.set("n", "<s-l>", "$l", { noremap = true })


-- increment/decrement
vim.keymap.set("n", "+", "<C-a>", { noremap = true })
vim.keymap.set("n", "-", "<C-x>", { noremap = true })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- move cursor to empty space at end of line
vim.opt.virtualedit:append("onemore")
vim.keymap.set("n", "$", "$l", { noremap = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
	vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})



