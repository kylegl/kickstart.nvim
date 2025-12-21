-- This config references snippets from https://github.com/linkarzu/dotfiles-latest/blob/main/neovim/neobean/lua/plugins/auto-save.lua

-- Autocommand for printing the autosaved message
local group = vim.api.nvim_create_augroup('autosave', {})
vim.api.nvim_create_autocmd('User', {
  pattern = 'AutoSaveWritePost',
  group = group,
  callback = function(opts)
    if opts.data.saved_buffer ~= nil then
      print 'AutoSaved'
    end
  end,
})

local function on_save()
  local mode = vim.fn.mode()

  if mode == 'i' then
    return false
  end

  return true
end

return {
  {
    'okuuva/auto-save.nvim',
    enabled = true,
    cmd = 'ASToggle',
    event = { 'InsertLeave', 'TextChanged' },
    opts = {
      enabled = true,
      debug = false,
      trigger_events = {
        immediate_save = { 'BufLeave', 'FocusLost', 'QuitPre', 'VimSuspend' },
        defer_save = { 'InsertLeave', 'TextChanged' },
        cancel_deferred_save = { 'InsertEnter' },
      },
      condition = on_save,
      noautocmd = true,
      debounce_delay = 2000,
    },
  },
}
