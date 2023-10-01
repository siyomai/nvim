local status, formatter = pcall(require, 'formatter')
if not status then
  return
end

formatter.setup()
