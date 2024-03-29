return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        ["javascript"] = { "prettierd" },
        ["javascriptreact"] = { "prettierd" },
        ["typescript"] = { "prettierd" },
        ["typescriptreact"] = { "prettierd" },
        ["vue"] = { "prettierd" },
        ["css"] = { "prettierd" },
        ["scss"] = { "prettierd" },
        ["less"] = { "prettierd" },
        ["html"] = { "prettierd", "blade-formatter" },
        ["json"] = { "prettierd" },
        ["jsonc"] = { "prettierd" },
        ["yaml"] = { "prettierd" },
        ["markdown"] = { "prettierd" },
        ["markdown.mdx"] = { "prettierd" },
        ["graphql"] = { "prettierd" },
        ["handlebars"] = { "prettierd" },
        php = { "php-cs-fixer" },
        ["blade.php"] = { "blade-formatter" },
      },
    }
    return opts
  end,
}
