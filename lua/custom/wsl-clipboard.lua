print("wsl-clipboard.lua loaded")
vim.opt.clipboard = 'unnamedplus'

if vim.fn.has('wsl') == 1 then
  vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('Yank', { clear = true }),
    callback = function()
      vim.fn.system('clip.exe', vim.v.event.regcontents)
    end,
  })
end
