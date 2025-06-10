vim.g.copilot_node_command = "node"
require("CopilotChat").setup({
  window = {
    layout = "float",      -- Options: "float", "vertical", "horizontal"
    width = 0.6,           -- Relative width (0.6 = 60% of screen)
    height = 0.6,          -- Relative height (0.6 = 60% of screen)
    border = "rounded",    -- Border style: "single", "double", "rounded", etc.
  },
})
