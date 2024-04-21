--Treesitter--
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		--Req treesitter--
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "c", "lua", "cpp", "bash", "python" },
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
