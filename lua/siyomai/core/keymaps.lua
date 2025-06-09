vim.g.mapleader = ','

local keymap = vim.keymap


keymap.set('n', '<C-h>', '<C-w><left>')
keymap.set('n', '<C-j>', '<C-w><down>')
keymap.set('n', '<C-k>', '<C-w><up>')
keymap.set('n', '<C-l>', '<C-w><right>')

-- split stuff
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sp', '<C-w>s')
keymap.set('n', '<leader>se', '<C-w>=')

-- tabs stuff
keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Tab: New' })
keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Tab: Close' })
keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Tab: Next' })
keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Tab: Previous' })

-- maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')

-- neo tree
keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader><leader>', '<C-^>')

-- LLM
keymap.set('n', '<leader>m', ':Gen<cr>')
keymap.set('v', '<leader>m', ':Gen<cr>')

-- Session Management
keymap.set('n', '<leader>ll', '<cmd>SessionSearch<cr>', { desc = 'Session Search' })
keymap.set('n', '<leader>ls', '<cmd>SessionSave<cr>', { desc = 'Session Save' })

-- search stuff
keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]resume' })

-- startify

-- lazygit
keymap.set('n', '<leader>gs', '<cmd>LazyGit<cr>', { desc = 'LazyGit' })

