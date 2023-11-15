local status, gen = pcall(require, 'gen')
if not status then
  return
end

gen.model = 'mistral:instruct'
