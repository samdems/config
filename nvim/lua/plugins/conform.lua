return {
  enabled = true,
  "stevearc/conform.nvim",
  opts = function()
    ---@class ConformOpts
    local opts = {
      format = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        php = { "pint" },
        blade = { "blade-formatter", "rustywind" },
        python = { "black" },
        javascript = { "prettier" },
        rust = { "rustfmt" },
        html = { "prettier" },
        graphql = { "prettier" },
        vue = { "prettier" },
        ejs = { "prettier" },
        twig = { "prettier" },
      },
      formatters = {
        prettier = {
          command = "prettier",
          args = {
            "--write",
            vim.fn.expand("%"),
          },
        },
      },
    }
    return opts
  end,
}

