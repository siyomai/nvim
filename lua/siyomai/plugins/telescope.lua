local status, telescope = pcall(require, 'telescope')
if not status then
  return
end

local action_status, telescope_actions = pcall(require, 'telescope.actions')
if not action_status then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-k>'] = telescope_actions.move_selection_previous,
        ['<C-j>'] = telescope_actions.move_selection_next,
        ['<C-q>'] = telescope_actions.send_selected_to_qflist + telescope_actions.open_qflist,
      }
    }
  }
})

telescope.load_extension('fzf')
