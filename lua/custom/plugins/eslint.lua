return {
  {
    'esmuellert/nvim-eslint',
    opts = {
      codeActionOnSave = {
        enable = true,
        mode = 'all',
      },
      workingDirectories = { mode = 'auto' },
      settings = {
        eslint = {
          options = {
            configFile = vim.fn.expand('~/.config/nvim/lua/custom/.eslint.config.js'),
          },
        },
      },
    },
    config = function()
      -- Map Ctrl-Space to show code actions (ESLint quick fixes)
      vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action, { desc = 'Code Actions' })
    end,
  },
}