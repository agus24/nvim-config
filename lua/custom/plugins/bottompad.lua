local function go_to_bottom_and_pad()
  local current_line = vim.fn.line '.'

  local total_lines = vim.fn.line '$'

  local win_height = vim.fn.winheight(0)

  local lines_below_cursor = total_lines - current_line

  local required_padding = win_height - 1 - lines_below_cursor

  if required_padding > 0 then
    vim.cmd 'normal! G'
    vim.cmd(string.format('normal! %do', required_padding))
    vim.cmd(string.format('normal! %dG', current_line))
    vim.cmd 'normal! zb'
    vim.cmd 'normal! G'
    vim.cmd(string.format('normal! %ddd', required_padding))
    vim.cmd(string.format('normal! %dG', current_line))
  else
    vim.cmd 'normal! zb'
  end
end

vim.keymap.set('n', 'zb', go_to_bottom_and_pad, { desc = 'Go to bottom and pad', noremap = true, silent = true })
return {}
