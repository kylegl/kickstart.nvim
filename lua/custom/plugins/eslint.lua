return {
  {
    'esmuellert/nvim-eslint',
    opts = {
      settings = {
        format = true,
      },
    },
    config = function()
      -- Map Ctrl-Space to show code actions (ESLint quick fixes)
      vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action, { desc = 'Code Actions' })
    end,
  },
}
