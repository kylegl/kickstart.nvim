-- Custom keymaps
local keymap = vim.keymap

-- Diagnostic float - show full error message
keymap.set('n', '<leader>e', function()
  vim.diagnostic.open_float({focus = false, scope = "line"})
end, { desc = 'Show diagnostic float' })

-- Other useful diagnostic keymaps
keymap.set('n', '<leader>E', function()
  vim.diagnostic.setloclist()
end, { desc = 'Open diagnostics location list' })