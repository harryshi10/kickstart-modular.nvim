return {
  'kepano/flexoki-neovim',
  name = 'flexoki',
  priority = 1000,
  config = function()
    require('flexoki').setup({
      float_window_style = 'border',
    })
    vim.cmd('colorscheme flexoki-light')
  end,
}
