-- Catppuccin colors --
return{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
  --Req catppuccin--
    vim.cmd.colorscheme "catppuccin"
  end
}
