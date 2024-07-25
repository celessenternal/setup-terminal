local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end
treesitter.setup({
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
