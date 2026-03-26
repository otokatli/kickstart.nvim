return {
  {
    'crnvl96/lazydocker.nvim',
    event = 'VeryLazy',
    opts = {}, -- This automatically calls the plugin's setup() function
    dependencies = {
      'MunifTanjim/nui.nvim', -- Required dependency for the floating UI
    },
    keys = {
      -- Pressing Space + l + d will open your Docker dashboard
      { '<leader>ld', '<cmd>LazyDocker<CR>', desc = 'Toggle [L]azy[D]ocker' },
    },
  },
}
