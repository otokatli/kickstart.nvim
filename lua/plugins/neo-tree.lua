return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- strictly required
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        width = 30, -- equivalent to VS Code's sidebar width
        mappings = {
          -- standard vim navigation, but you can add custom ones here
          ['<Space>'] = 'none',
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- set to false to hide dotfiles like .git
          hide_dotfiles = false,
          hide_gitignored = true,
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
    }

    -- Keymap to toggle the tree (similar to Ctrl+B in VS Code, but using Leader+e)
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle File Explorer' })
  end,
}
