return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = function()
    -- Imposta la trasparenza PRIMA di caricare il colorscheme
    vim.api.nvim_set_hl(0, "NeotreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeotreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeotreeEndOfBuffer", { bg = "none" })
    
    -- Configurazione chiave di toggle
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true })
    
    -- Setup di Neo-tree con eventuali opzioni aggiuntive
    require("neo-tree").setup({
      -- Eventuali altre opzioni qui
      -- es: 
      -- close_if_last_window = true,
      -- enable_git_status = true,
    })
    
    -- Protezione contro l'override dei colorscheme
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "NeotreeNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NeotreeNormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NeotreeEndOfBuffer", { bg = "none" })
      end
    })
  end
}
