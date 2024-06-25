-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Allows movement of lines when selecting them in vis mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Yank from cursor position to the end of line
vim.keymap.set("n", "Y", "yg$")

-- When using J, keeps cursor at current position
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in center when using Ctrl-d, Ctrl-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Deletes into the void
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Deletes into the void when pasting over something
vim.keymap.set({ "n", "v" }, "p", "\"_dP")

-- Disable/enable continuing comments after newline
vim.keymap.set("n", "<leader>ce", "<cmd>set formatoptions =cro<CR>",
  { desc = 'Enable comment continuation after newline' })
vim.keymap.set("n", "<leader>cd", "<cmd>set formatoptions -=cro<CR>", {
  desc =
  'Disable comment continuation after newline'
})

-- When yanking a visual selection,
-- jump to the end of the selecton after yanking
vim.keymap.set("v", "y", "ygv<C-c>")

-- When pasting in normal mode, automatically put the cursor at the end
-- of the pasted selection
vim.keymap.set("n", "p", "p`]")

-- Remap the backtick as a semicolon so that it's easier to jump to the same
-- columnt that the mark was set on, because it's hard to press backtick hehe
vim.keymap.set("n", "'", "`")

-- use Ctrl-y to select autocomplete
vim.keymap.set('i', '<C-y>', '<Enter>', { silent = true, expr = true })

vim.keymap.set('n', ',', '@@', { silent = true })
