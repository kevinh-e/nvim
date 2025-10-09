return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  { "0xstepit/flow.nvim" },
  { "rose-pine/neovim", name = "rose-pine", opts = {
    variant = "moon",
  } },
  { "zenbones-theme/zenbones.nvim", requires = "rktjmp/lush.nvim", name = "zenbones" },
  {
    "sainnhe/sonokai",
    name = "sonokai",
    opts = {
      transparent_background = true,
    },
  },
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    opts = {
      bold_vert_split = false,
      dim_nc_background = true,
      disable_background = true,
      disable_float_background = true,
    },
  },
  {
    "dgox16/oldworld.nvim",
    name = "oldworld",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    name = "bluloco",
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    name = "tokyodark",
    opts = {},
  },
  {
    "ramojus/mellifluous.nvim",
    name = "mellifluous",
    opts = {
      transparent_background = {
        enabled = true,
      },
    },
  },
  -- {
  --   "shaunsingh/nord.nvim",
  --   name = "nord",
  --   opts = {
  --     -- nord_contrast = false,
  --     -- nord_borders = true,
  --     -- nord_disable_background = true,
  --     -- nord_cursorline_transparent = true,
  --     -- nord_enable_sidebar_background = true,
  --     -- nord_italic = true,
  --     -- nord_bold = true,
  --   },
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "sonokai",
      -- colorscheme = "mellifluous",
      colorscheme = "oldworld",
      -- colorscheme = "bluloco",
      -- colorscheme = "catppuccin",
      -- colorscheme = "poimandres",
      -- colorscheme = "nord",
      -- colorscheme = "tokyodark",
    },
  },
}
