-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "switch buffer next" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "swithc buffer prev" })
vim.keymap.set("n", "<leader>su", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "gv", function()
  vim.cmd('normal! vi""0y')
  local reg = vim.fn.getreg("0")
  if type(reg) == "string" then
    local view = string.gsub(reg, "%.", "/")
    local file = "resources/views/" .. view .. ".blade.php"
    vim.cmd("edit " .. file)
  end
end, { desc = "goto view (laravel)" })
