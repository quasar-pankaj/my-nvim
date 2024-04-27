return {
  "mfussenegger/nvim-lint",
  event = { "BufWritePre" },
  config = function()
    require("lint").linters_by_ft = {
      lua = { "luacheck" },
      cpp = { "clang-tidy" },
      c = { "clang-tidy" },
      cmake = { "cmakelint" },
    }
  end,
}
