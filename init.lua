-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("config.snippets")

-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.blade.php",
--   callback = function()
--     vim.api.nvim_set_option("filetype", "html")
--   end,
-- })
