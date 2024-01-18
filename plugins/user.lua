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
    "mg979/vim-visual-multi",
      branch = "master",
      lazy = false,
      init = function()
        vim.g.VM_maps = {
          ["Find Under"] = "<C-n>"
        }
    	end,
    },
    "Bekaboo/deadcolumn.nvim",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  { 'm00qek/baleia.nvim', tag = 'v1.3.0' },
  {
    "samodostal/image.nvim",
    config = function()
      require("image").setup {
        render = {
          min_padding = 5,
          show_label = true,
          use_dither = true,
          foreground_color = false,
          background_color = false,
        },
        events = {
          update_on_nvim_resize = true,
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
  },
  {
  "johmsalas/text-case.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("textcase").setup({})
    require("telescope").load_extension("textcase")
  end,
  keys = {
    "ga", -- Default invocation prefix
    { "ga.", "<cmd>TextCaseOpenTelescope<CR>", mode = { "n", "v" }, desc = "Telescope" },
  },
}
}
