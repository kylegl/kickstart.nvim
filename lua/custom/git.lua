-- Custom Git configuration for Lazy.nvim
-- This helps resolve GitHub connectivity issues

-- Configure Git to use SSH instead of HTTPS for GitHub
vim.g.git_ssh_command = 'ssh -o StrictHostKeyChecking=no'

-- Override the lazy.nvim git command to use SSH
require('lazy').setup({
  -- Your existing plugins here...
}, {
  git = {
    -- Use SSH instead of HTTPS
    url_format = 'git@github.com:%s.git',
    -- Alternative: Use specific GitHub IPs if SSH doesn't work
    -- url_format = 'https://140.82.112.3/%s.git',
  },
})