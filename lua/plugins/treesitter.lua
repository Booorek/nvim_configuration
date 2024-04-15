--Treesitter--
return  {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()

    --Req treesitter--
    local config =require("nvim-treesitter.configs")
    config.setup({
     ensure_installed = {"lua","c","cpp","python","go"},
     sync_install = false,
     highlight = { enable = true },
     indent = { enable = true },  
    })
  end

}

