return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "soft", -- oppure "medium" per un contrasto meno estremo
    })
  end
}

