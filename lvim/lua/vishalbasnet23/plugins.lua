lvim.plugins = {
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        height = 10, -- height of the trouble list when position is top or bottom
        width = 50, -- width of the list when position is left or right
      }
    end
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    -- load only on require("tailwindcss-colors")
    module = "tailwindcss-colors",
    -- run the setup function after plugin is loaded
    config = function()
      -- pass config options here (or nothing to use defaults)
      require("tailwindcss-colors").setup()
    end
  },
  -- {
  --   "echasnovski/mini.map",
  --   branch = "stable",
  --   config = function()
  --     require('mini.map').setup()
  --     local map = require('mini.map')
  --     map.setup({
  --       integrations = {
  --         map.gen_integration.builtin_search(),
  --         map.gen_integration.diagnostic({
  --           error = 'DiagnosticFloatingError',
  --           warn  = 'DiagnosticFloatingWarn',
  --           info  = 'DiagnosticFloatingInfo',
  --           hint  = 'DiagnosticFloatingHint',
  --         }),
  --       },
  --       symbols = {
  --         encode = map.gen_encode_symbols.dot('4x2'),
  --       },
  --       window = {
  --         side = 'right',
  --         width = 20, -- set to 1 for a pure scrollbar :)
  --         winblend = 15,
  --         show_integration_count = false,
  --       },
  --     })
  --   end
  -- },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  'ethanholz/nvim-lastplace',
  'onsails/lspkind-nvim',
  'mg979/vim-visual-multi',
  'norcalli/nvim-colorizer.lua',
  'ap/vim-css-color',
  'sheerun/vim-polyglot',
  'pineapplegiant/spaceduck',
  {
    "casonadams/simple-diagnostics.nvim",
    config = function()
      require("simple-diagnostics").setup({
        virtual_text = true,
        message_area = true,
        signs = true,
      })
    end,
  },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            'class',
            'function',
            'method',
          },
        },
      }
    end
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
      })
    end
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  { 'frazrepo/vim-rainbow' },
  {
    'lunarvim/synthwave84.nvim',
    config = function()
      require('synthwave84').setup({
        glow = {
          error_msg = true,
          type2 = true,
          func = true,
          keyword = true,
          operator = false,
          buffer_current_target = true,
          buffer_visible_target = true,
          buffer_inactive_target = true,
        }
      })
    end
  },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end
  }

  -- { 'anuvyklack/pretty-fold.nvim',
  --   config = function()
  --     require('pretty-fold').setup()
  --   end
  -- }
  --
}
