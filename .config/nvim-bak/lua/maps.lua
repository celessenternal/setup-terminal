local keymap = vim.keymap
local opts = { silent = true, noremap = true }

keymap.set("n", "x", '"_x')

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "<C-<Space>>", "<C-w>w")
keymap.set("n", "<Tab>", ":BufferLineCycleNext<cr>", opts)

keymap.set("n", "wq", ":wq<cr>", opts)
keymap.set("n", "ww", ":w<cr>", opts)
keymap.set("n", "qq", ":q<cr>", opts)
keymap.set("n", "<Space>d", ":bdelete!<cr>", opts)

keymap.set("n", "L", "<end>")
keymap.set("n", "H", "<home>")
keymap.set("n", "J", "G")
keymap.set("n", "K", "gg")
