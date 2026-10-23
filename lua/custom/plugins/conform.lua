return {
  'stevearc/conform.nvim',

  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },

  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({
          async = true,
          lsp_format = 'fallback',
        })
      end,
      mode = { 'n', 'v' },
      desc = 'Format buffer',
    },
  },

  opts = {
    notify_on_error = true,

    -- Automatically format files when saving.
    format_on_save = function(bufnr)
      return {
        timeout_ms = 1000,
        lsp_format = 'fallback',
      }
    end,

    -- Formatters for each filetype.
    formatters_by_ft = {
      c = { 'clang_format' },
      cpp = { 'clang_format' },

      python = { 'isort', 'black' },

      lua = { 'stylua' },
    },
  },
}
