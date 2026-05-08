return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        hidden = true,
        ignored = true,
        exclude = { ".git" },
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },

      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", ".git", ".svelte-kit" },
          },
        },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    event = "LazyFile",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "templ",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    opts = {
      servers = {
        templ = {
          filetypes = { "templ" },
          settings = {
            templ = {
              enable_snippets = true,
            },
          },
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = { "LazyFile", "VeryLazy" },
    opts_extend = { "ensure_installed" },
    opts = {
      hightlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdonw",
        "markdown_inline",
        "printf",
        "query",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "templ",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        templ = { "templ" },
      },
    },
  },
}
