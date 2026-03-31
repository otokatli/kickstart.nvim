return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato', -- latte, frappe, macchiato, mocha
      transparent_background = false, -- sets background to transparent
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }

    -- setup must be called before loading
    vim.cmd.colorscheme 'catppuccin'
  end,
}
