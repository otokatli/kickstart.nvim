return {
  'nvim-tree/nvim-web-devicons',
  lazy = false,
  config = function()
    require('nvim-web-devicons').setup {
      -- You can leave this empty to use the default icons,
      -- or override specific icons here if you want.
      color_icons = true,
      default = true,
      strict = true,
    }
  end,
}
