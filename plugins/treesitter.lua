return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Добавляем языки в ensure_installed
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua", "php", "html", "css", "typescript", "javascript", "json, ts, tsx, js, jsx",
    })

    -- Добавляем настройки для incremental_selection
    opts.incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    }

    -- Добавляем настройки для textobjects
    opts.textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]f"] = "@function.outer",
        },
        goto_next_end = {
          ["]F"] = "@function.outer",
        },
        goto_previous_start = {
          ["[f"] = "@function.outer",
        },
        goto_previous_end = {
          ["[F"] = "@function.outer",
        },
      },
    }
  end,
}
