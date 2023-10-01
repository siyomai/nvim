local status, _ = pcall(vim.cmd, "colorscheme happy_hacking")

if not status then
  print("Colorscheme does not exist")
  return
end
