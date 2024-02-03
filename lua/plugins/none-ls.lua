return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        -- javascript
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,

        -- misc
        --null_ls.builtins.completion.spell,

        -- python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.mypy,
        -- null_ls.builtins.diagnostics.flake8,

        -- markdown
        null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.diagnostics.markdownlint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
