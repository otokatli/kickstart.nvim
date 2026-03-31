return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto', -- or 'gruvbox', 'tokyonight', etc.
        icons_enabled = true,
      },
    }
  end,
}
