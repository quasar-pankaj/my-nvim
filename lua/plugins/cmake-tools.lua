return {
  'Civitasv/cmake-tools.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('cmake-tools').setup({})
  end,
}
