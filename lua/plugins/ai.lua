local toggle_key = "<C-,>"
return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
    opts = {
      terminal_cmd = "~/.local/bin/claude --dangerously-skip-permissions",
    },
  },
  -- {
  --   {
  --     "NickvanDyke/opencode.nvim",
  --     dependencies = {
  --       -- Recommended for `ask()` and `select()`.
  --       -- Required for `toggle()`.
  --       { "folke/snacks.nvim", opts = { input = {}, picker = {} } },
  --     },
  --     config = function()
  --       vim.g.opencode_opts = {
  --         -- Your configuration, if any — see `lua/opencode/config.lua`
  --       }
  --
  --       -- Required for `vim.g.opencode_opts.auto_reload`
  --       vim.opt.autoread = true
  --
  --       -- Recommended/example keymaps
  --       vim.keymap.set({ "n", "x" }, "<leader>oa", function()
  --         require("opencode").ask("@this: ", { submit = true })
  --       end, { desc = "Ask about this" })
  --       vim.keymap.set({ "n", "x" }, "<leader>o+", function()
  --         require("opencode").prompt("@this")
  --       end, { desc = "Add this" })
  --       vim.keymap.set({ "n", "x" }, "<leader>os", function()
  --         require("opencode").select()
  --       end, { desc = "Select prompt" })
  --       vim.keymap.set("n", "<leader>ot", function()
  --         require("opencode").toggle()
  --       end, { desc = "Toggle embedded" })
  --       vim.keymap.set("n", "<leader>on", function()
  --         require("opencode").command("session_new")
  --       end, { desc = "New session" })
  --       vim.keymap.set("n", "<leader>oi", function()
  --         require("opencode").command("session_interrupt")
  --       end, { desc = "Interrupt session" })
  --       vim.keymap.set("n", "<S-C-u>", function()
  --         require("opencode").command("messages_half_page_up")
  --       end, { desc = "Messages half page up" })
  --       vim.keymap.set("n", "<S-C-d>", function()
  --         require("opencode").command("messages_half_page_down")
  --       end, { desc = "Messages half page down" })
  --     end,
  --   },
  -- },
  {
    "kevinh-e/codex.nvim",
    config = function()
      require("codex").setup({
        auto_start = true,
        terminal = {
          cmd = { "codex" }, -- adjust to the Codex command you use locally
        },
      })
    end,
    keys = {
      { "<leader>hc", "<cmd>Codex<cr>", desc = "Toggle Codex" },
      { "<leader>hf", "<cmd>CodexFocus<cr>", desc = "Focus Codex terminal" },
      { "<leader>hs", "<cmd>'<,'>CodexSend<cr>", mode = "v", desc = "Send selection to Codex" },
      { "<leader>ha", "<cmd>CodexAdd %<cr>", desc = "Add current file to Codex" },
    },
  },
}
