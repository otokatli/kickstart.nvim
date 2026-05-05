-- File: ~/.config/nvim/lua/plugins/nvim-tree.lua

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort_by = 'case_sensitive',
      view = {
        width = 30,
        relativenumber = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        custom = { '^.git$' },
      },
      git = {
        ignore = true, -- Shows files ignored by .gitignore
      },
    }

    -- Set a keymap to toggle the tree
    -- <leader>e is a common choice (Explorer)
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
  end,
}
