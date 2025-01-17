-- adds a directory sidebar to navigate files

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    window = {
      mappings = {
        ["h"] = "close_node",
        ["l"] = "open"
      },
    },
  }
}
