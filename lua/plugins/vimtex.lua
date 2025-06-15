return {
  "lervag/vimtex",
  ft = { "tex", "plaintex" },
  config = function()
--     vim.g.vimtex_view_method = "SumatraPDF" -- or "zathura" or "skim"
--     vim.g.vimtex_compiler_method = "latexmk"
--     vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<cr>", { desc = "Compile LaTeX" })
--     vim.keymap.set("n", "<leader>lv", "<cmd>VimtexView<cr>", { desc = "View PDF" })
--   end
-- }

    vim.g.vimtex_view_method = 'general'
    vim.g.vimtex_view_general_viewer = 'C:\\Program Files\\SumatraPDF\\SumatraPDF.exe'
    vim.g.vimtex_view_general_options =
      '-reuse-instance -forward-search @tex @line @pdf' ..
      '-inverse-search "nvim --server texvim --remote-send \\\"<Esc>:drop %f<CR>:%l<CR>zz\\\""'
    vim.g.vimtex_view_general_options_latexmk = 'reuse-instance'
  end
}