return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'frappe', -- latte, frappe, macchiato, mocha
      transparent_background = false, -- Set to true if you want the terminal bg to show through
    }

    -- Load the colorscheme here
    vim.cmd.colorscheme 'catppuccin-frappe'
  end,
}
