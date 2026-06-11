---@module 'lazy'
---@type LazySpec
return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  ---@module 'persistence'
  ---@type persistence.Config
  opts = {
    branch = true,
  },
  init = function()
    -- Close neo-tree before saving session so it doesn't corrupt the layout on restore
    vim.api.nvim_create_autocmd('User', {
      pattern = 'PersistenceSavePre',
      callback = function()
        pcall(vim.cmd, 'Neotree close')
      end,
    })
  end,
  keys = {
    { '<leader>qs', function() require('persistence').load() vim.cmd 'Neotree show' vim.cmd 'wincmd p' end, desc = '[S]ession: restore for cwd' },
    { '<leader>qS', function() require('persistence').select() end, desc = '[S]ession: select' },
    { '<leader>ql', function() require('persistence').load { last = true } vim.cmd 'Neotree show' vim.cmd 'wincmd p' end, desc = '[S]ession: restore [l]ast' },
    { '<leader>qd', function() require('persistence').stop() end, desc = '[S]ession: [d]on\'t save on exit' },
  },
}
-- vim: ts=2 sts=2 sw=2 et
