return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "rebelot/heirline.nvim",
    config = function(plugin, opts)
      local status = require "astronvim.utils.status"
      opts.statusline[4] = status.component.file_info { filename = { modify = ":~" } }
      require "plugins.configs.heirline"(plugin, opts)
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  --
  --   "sontungexpt/sttusline",
  -- {
  --     dependencies = {
  --         "nvim-tree/nvim-web-devicons",
  --     },
  --     event = { "BufEnter" },
  --     config = function(_, opts)
  --         require("sttusline").setup {
  --             -- statusline_color = "#000000",
  --             statusline_color = "StatusLine",
  --
  --             -- | 1 | 2 | 3
  --             -- recommended: 3
  --             laststatus = 3,
  --             disabled = {
  --                 filetypes = {
  --                     -- "NvimTree",
  --                     -- "lazy",
  --                 buftypes = {
  --                     -- "terminal",
  --                 },
  --             },
  --             components = {
  --                 "mode",
  --                 "filename",
  --                 "git-branch",
  --                 "git-diff",
  --                 "%=",
  --                 "diagnostics",
  --                 "lsps-formatters",
  --                 "copilot",
  --                 "indent",
  --                 "encoding",
  --                 "pos-cursor",
  --                 "pos-cursor-progress",
  --             },
  --         }
  --     end,
  --     },
}
