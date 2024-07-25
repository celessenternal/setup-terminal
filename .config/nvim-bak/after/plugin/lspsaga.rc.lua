local status, lspsaga = pcall(require, "lspsaga")
if not status then
  return
end

lspsaga.setup {
  server_filetype_map = {
  },
  lightbulb = {
    enable = false
  }
}

local opts = { noremap = true, silent = true }
local keymap = vim.keymap
keymap.set('n', '<C-j>', ':Lspsaga diagnostic_jump_next<cr>', opts)
keymap.set('n', '<C-k>', ':Lspsaga hover_doc<cr>', opts)
keymap.set('n', 'gd', ':Lspsaga finder<cr>', opts)
keymap.set('n', 'gr', ':Lspsaga rename<cr>', opts)
