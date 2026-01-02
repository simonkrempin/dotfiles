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
            exclude = { "node_modules", ".git" },
          },
        },
      },
    },
  },
}
