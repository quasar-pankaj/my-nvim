return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- add any opts here
    provider = "gemini",
    auto_suggestion_provider = "gemini",
    dual_boost = {
      enabled = false,
      first_provider = "openai",
      second_provider = "gemini",
      prompt = "Based on the two reference outputs below, generate a response that incorporates elements from both but reflects your own judgment and unique perspective. Do not provide any explanation, just give the response directly. Reference Output 1: [{{provider1_output}}], Reference Output 2: [{{provider2_output}}]",
    },
    -- openai = {
    -- endpoint = "https://api.openai.com/v1/chat/completions",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   organization = "org-xxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "gpt-3.5-turbo",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
    gemini = {
    --   endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    model = "gemini-1.5-pro-latest",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    },
    -- azure = {
    --   endpoint = "https://xxx.openai.azure.com/openai/deployments/xxx/chat/completions?api-version=2023-03-15-preview",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "gpt-3.5-turbo",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
    -- claude = {
    --   endpoint = "https://api.anthropic.com/v1/complete",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "claude-2",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
    -- openrouter = {
    --   endpoint = "https://openrouter.ai/api/v1/chat/completions",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "gpt-3.5-turbo",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
    -- openai-proxy = {
    --   endpoint = "https://api.openai.com/v1/chat/completions",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "gpt-3.5-turbo",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
    -- glhf.chat configurations
    -- glhf = {
    --   endpoint = "https://api.glhf.ai/v1/chat/completions",
    --   api_key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    --   model = "gpt-3.5-turbo",
    --   temperature = 0.7,
    --   max_tokens = 4096,
    --   top_p = 1,
    --   frequency_penalty = 0,
    --   presence_penalty = 0,
    --   timeout = 10000,
    -- },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
