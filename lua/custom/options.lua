-- This file is for my personal editor options

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- ESLint code actions (like VSCode quick fix) - use Ctrl-Space
vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action, { desc = 'Code Actions' })

-- Folding configuration
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldenable = true
vim.o.foldlevelstart = 99