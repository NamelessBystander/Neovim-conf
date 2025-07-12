return {
    { 
	    "nvim-treesitter/nvim-treesitter",
	    lazy = false,
	    build = ":TSUpdate",

	    config = function()
			require "nvim-treesitter.configs".setup {
				ensure_installed = { "c", "lua", "rust" , "bash" },
				sync_install = true,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			}
	    end,
    },
}
