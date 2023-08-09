-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<S-CR>"] = cmp.mapping(function(fallback)
      vim.api.nvim_feedkeys(
        vim.fn["copilot#Accept"](vim.api.nvim_replace_termcodes("<Tab>", true, true, true)),
        "n",
        true
      )
    end),
  },
  experimental = {
    ghost_text = false, -- this feature conflict with copilot.vim's preview.
  },
})
