return {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
    init = function()
      vim.api.nvim_set_keymap('n', '<leader>t', ':Neotree float reveal=true<CR>', {noremap = true, silent = true})
      vim.api.nvim_set_keymap('n', '<leader>v', ':Neotree float git_status reveal=true<CR>', {noremap = true, silent = true})
      vim.api.nvim_set_keymap('n', '<leader>b', ':Neotree float buffers <CR>', {noremap = true, silent = true})
    end,
    config = function()
      vim.api.nvim_set_hl(0, "NeoTreeTitle", { fg = "#ff8800", bold = true })
    end,
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
