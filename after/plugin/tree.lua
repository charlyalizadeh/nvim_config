local nvim_tree = require("nvim-tree")
nvim_tree.setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})


vim.keymap.set("n", "<leader><TAB>", vim.cmd.NvimTreeToggle)
require("nvim-tree").setup()
