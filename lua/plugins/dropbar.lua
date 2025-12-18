return {
  'Bekaboo/dropbar.nvim',
  -- Optional dependencies for icons and fuzzy finding
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local dropbar_api = require 'dropbar.api'

    -- basic setup (defaults are usually fine)
    require('dropbar').setup()

    -- Keymaps are NOT set by default, so you should set them here
    vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
    vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
    vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
  end,
}
