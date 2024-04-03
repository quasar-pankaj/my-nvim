return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
          },
        },
      },
      window = {
	width = 25,
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
          ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem', true) end,
          ['b'] = function() vim.api.nvim_exec('Neotree focus buffers', true) end,
          ['g'] = function() vim.api.nvim_exec('Neotree focus git_status', true) end,
        },
      },
    })
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
  end,
}
