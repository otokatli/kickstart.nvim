return {
  'Bekaboo/dropbar.nvim',
  -- Optional but highly recommended dependencies
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim', -- For fast fuzzy finding
    'nvim-tree/nvim-web-devicons', -- For file/symbol icons
  },
  config = function()
    local dropbar_api = require 'dropbar.api'

    -- The plugin runs automatically, but these keymaps let you interact with it
    vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in dropbar' })
    vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
    vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
  end,
}
