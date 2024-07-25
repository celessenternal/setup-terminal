local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
  options = {
    mode = "tabs",
    --separator_style = "custom",
    --separator_style = { '', '', '' },
    separator_style = "slant",
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
})
vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#24283b" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#24283b" })
