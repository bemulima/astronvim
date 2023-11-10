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
    },
}
