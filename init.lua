-- bootstrap lazy.nvim, LazyVim and your plugins

require('config.lazy')
-- vim.opt.encoding = 'utf-8'
-- vim.opt.fileencoding = 'utf-8'
-- vim.cmd.colorscheme("catppuccin")  -- Lua
-- require('config.options')
-- require('config.keybinds')
-- require("nvim-web-devicons").setup { enabled = false }

-- TODO 
-- require("plugins.catppuccin")
-- require("plugins.mini")
-- require('slarse.remap')
-- require('slarse.set')
-- require('slarse.comments')
require('config.comment')--.setup()  -- Loads comment.lua

vim.cmd([[
    function! s:write_server_name() abort
    let nvim_server_file = (has('win32') ? $TEMP : '/tmp') . '/vimtexserver.txt'
    call writefile([v:servername], nvim_server_file)
    endfunction

    augroup vimtex_common
    autocmd!
    autocmd FileType tex call s:write_server_name()
    augroup END
    ]])


