local keymap = vim.keymap

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

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- Insert mode: emacs-like navigation (Ctrl-A, Ctrl-E)
--imap('<c-a>', '<c-o>^', { silent = true })  -- beginning-of-line
--imap('<c-e>', '<c-o>$', { silent = true })  -- end-of-line

--imap('<c-b>', '<c-o>B', { silent = true })  -- words backward
--imap('<c-f>', '<c-o>W', { silent = true })  -- words forward

-- Quick map to normal mode from insert mode
--vim.keymap.set('i', ';;', '<Esc>')

-- Keep navigation centred
-- vim.keymap.set('n', 'n', 'nzzzv')
-- vim.keymap.set('n', 'N', 'Nzzzv')
-- vim.keymap.set('n', 'G', 'Gzz')

-- Buffer keymaps
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[B]uffer [D]elete' })




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



