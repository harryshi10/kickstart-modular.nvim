---@module 'lazy'
---@type LazySpec
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  opts = {
    options = {
      numbers = 'buffer_id',
      close_command = function(n)
        MiniBufremove.delete(n)
      end,
      right_mouse_command = function(n)
        MiniBufremove.delete(n)
      end,
      diagnostics = 'nvim_lsp',
      show_buffer_close_icons = true,
      show_close_icon = false,
      separator_style = 'thin',
      always_show_bufferline = false,
    },
  },
  keys = {
    { '<leader>bp', '<cmd>BufferLinePick<CR>', desc = '[B]uffer [P]ick' },
    { '[b', '<cmd>BufferLineCyclePrev<CR>', desc = 'Prev buffer' },
    { ']b', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
  },
}
-- vim: ts=2 sts=2 sw=2 et
