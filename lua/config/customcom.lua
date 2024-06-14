vim.api.nvim_create_user_command(
'Buildrun',
function()
  local filetype = vim.bo.filetype

  if filetype == "c" or filetype == "cpp" then
    -- Crear una nueva ventana dividida inferior
    vim.cmd('split term://make && ./bin/output; bash')

    -- Cambiar al modo terminal
    vim.cmd('startinsert')
  else
    print("No custom command defined for this filetype")
  end
  end,
  {}
)
vim.keymap.set('n', '<F6>', ':Buildrun<CR>', { noremap = true, silent = true })
