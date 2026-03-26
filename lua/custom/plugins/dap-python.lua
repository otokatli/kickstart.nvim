return {
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    -- Automatically resolve the path to debugpy installed by Mason
    local path = vim.fn.stdpath 'data' .. '/mason/packages/debugpy/venv/bin/python'
    require('dap-python').setup(path)

    -- Optional: Add a keymap to easily run the current Python test method
    vim.keymap.set('n', '<leader>dpr', function() require('dap-python').test_method() end, { desc = '[D]ebug [P]ython [R]un method' })
  end,
}
