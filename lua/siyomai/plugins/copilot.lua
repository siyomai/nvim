local status, cc = pcall(require, 'CopilotChat')

if not status then
  return
end

vim.g.copilot_node_command = "node"

cc.setup({
  window = {
    layout = "float",      -- Options: "float", "vertical", "horizontal"
    width = 0.6,           -- Relative width (0.6 = 60% of screen)
    height = 0.6,          -- Relative height (0.6 = 60% of screen)
    border = "rounded",    -- Border style: "single", "double", "rounded", etc.
  },
    context = {
    providers = {
      "buffers",  -- include open buffers
      "files",    -- include additional files from project
      -- optionally: "git_diff", "urls", etc.
    }
  }
})
