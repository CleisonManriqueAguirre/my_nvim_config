local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup({
        -- your configuration here
        flavour = 'macchiato', -- latte, frappe, macchiato, mocha
        -- transparent_background = true,  -- Enable built-in transparency

      })
      vim.cmd.colorscheme('catppuccin') -- Don't set it here if you're using priority
      enable_transparency()
    end
  }
}