return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang_format" },
      cpp = { "clang_format" },
      lua = { "stylua" },
      sh = { "shfmt" },
      python = { "pyright" },
      go = { "golangci-lint" },
    },
    -- 无外部格式化器时自动用LSP兜底格式化
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    -- 可选：统一Google代码风格
    formatters = {
      clang_format = { prepend_args = { "--style=Google" } },
    },
  },
}
