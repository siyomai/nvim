local status, wk = pcall(require, 'which-key')
if not status then return end

wk.setup({})

wk.add({
  { "<leader>g", group = "+Git" },                 -- group
  { "<leader>l", group = "+Session" },             -- group
  { "<leader>s", group = "+Search" },              -- group
  { "<leader>t", group = "+Tabs" },                -- group
  { "<leader>w", group = "+Workspaces" },          -- group
}, { mode = "n", ignore_missing = true })
