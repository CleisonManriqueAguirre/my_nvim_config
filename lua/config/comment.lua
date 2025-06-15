-- local comment = require('Comment').setup()
-- local ft = require('Comment.ft')

-- -- Basic keymaps
-- vim.keymap.set('n', '<leader>/', comment.toggle.linewise.current, { desc = 'Toggle comment line' })
-- vim.keymap.set('v', '<leader>/', comment.toggle.linewise.visual, { desc = 'Toggle comment selection' })

-- Language-specific overrides (optional)
-- ft.set('javascript', { '// %s', '/* %s */' })
-- ft.set('lua', { '-- %s', '--[[ %s ]]' })