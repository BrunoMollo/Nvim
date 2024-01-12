local cc = require("neo-tree.sources.common.commands")
local fs = require("neo-tree.sources.filesystem")
local utils = require("neo-tree.utils")

return {

  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    window = {
      width = 65,
      mappings = {
        ["<space>"] = "none",
        ["c"] = function(state)
          local node = state.tree:get_node()
          vim.api.nvim_command("!echo " .. node.name .. "| xclip")
          print("Copied string: " .. node.name)
        end,
        ["<cr>"] = function(state)
          cc.open(state, utils.wrap(fs.toggle_directory, state))
          local node = state.tree:get_node()
          if node.type == "file" then
            cc.close_window(state)
          end
        end,
      },
    },
    default_component_configs = {
      indent = {
        indent_size = 4,
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "󰁔",
        expander_expanded = "󰁃",
        last_indent_marker = "│",
        expander_highlight = "NeoTreeExpander",
      },
      file_size = {
        enabled = false,
      },
    },
  },
}
