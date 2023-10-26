return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {"andweeb/presence.nvim", lazy = false,
    config = function()
require("presence").setup({
-- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    -- enable_line_number  = true,                      -- Displays the current line number instead of the current project
    -- show_time           = false,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Monkey coding %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    -- file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    -- git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    -- plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    -- reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on arbuze-enterprise",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
})
    end,
  },
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
