-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { -- Auto-generate docstring annotations from the function/class signature under the cursor
    'danymat/neogen',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    opts = {
      snippet_engine = 'luasnip',
      languages = {
        python = {
          template = {
            annotation_convention = 'numpydoc',
          },
        },
      },
    },
    keys = {
      { '<leader>nf', function() require('neogen').generate() end, desc = '[N]eogen generate docstring' },
    },
  },
}
