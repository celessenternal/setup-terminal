vim.cmd [[
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.4
let g:floaterm_height = 0.9
let g:floaterm_wintype = 'float'
hi FloatermBorder guifg=DarkGreen
]]
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "\\", ":FloatermToggle<cr>", opts)
