return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {"andweeb/presence.nvim", lazy = false},
{
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            -- change these if you want
            accept = "<End>",
            next = "<PageUp>",
            prev = "<PageDown>",
            dismiss = "<Del>",
          },
        },
      })
    end,
  },
  {"folke/todo-comments.nvim", lazy = false,
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end},
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
