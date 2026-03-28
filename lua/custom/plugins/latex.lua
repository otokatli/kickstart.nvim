return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    -- VimTeX configuration goes here!
    -- Notice we use 'init' instead of 'config' so these global variables
    -- are set BEFORE the plugin loads.

    -- Set your PDF Viewer (Crucial for live updates!)
    -- 'zathura' is the most popular for Linux/macOS.
    -- 'sioyek', 'sumatrapdf' (Windows), or 'general' (system default) are also good.
    vim.g.vimtex_view_method = 'general'

    -- Specify that Evince is the general viewer we want to use
    vim.g.vimtex_view_general_viewer = 'evince'

    -- Clean up the Quickfix menu
    -- Don't automatically open the quickfix window for every little warning (like overfull hboxes)
    vim.g.vimtex_quickfix_open_on_warning = 0

    -- Adjust concealment (Optional)
    -- VimTeX automatically "conceals" LaTeX code (e.g., turning \alpha into α on screen).
    -- If you hate this and want to see the raw code, uncomment the line below:
    -- vim.g.vimtex_syntax_conceal_disable = 1
  end,
}
