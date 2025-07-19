return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter", -- Only load nvim-cmp when entering Insert mode
	dependencies = {
		-- Required sources for nvim-cmp
		"hrsh7th/cmp-nvim-lsp", -- LSP completions (requires nvim-lspconfig)
		"hrsh7th/cmp-buffer", -- Buffer completions
		"hrsh7th/cmp-path", -- File path completions
		"saadparwaiz1/cmp_luasnip", -- Snippet completions (if using LuaSnip)

		-- Snippet engine (recommended if you want snippets)
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets", -- A collection of common snippets
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		-- Load friendly snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-n>"] = cmp.mapping.select_next_item(), -- Select next item in the completion list
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
				["<C-e>"] = cmp.mapping.abort(), -- Abort completion
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
				-- Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				format = function(entry, item)
					-- Simple formatting: add kind icons if desired (requires a plugin like nvim-web-devicons)
					-- You might need to install 'nvim-web-devicons' and load it before nvim-cmp for icons to show up.
					-- Example with a hypothetical 'devicons' module:
					-- local kind_icons = require('devicons').get_icons()
					-- item.kind = (kind_icons[item.kind] or '') .. ' ' .. item.kind
					return item
				end,
			},
			experimental = {
				ghost_text = true,
			},
		})

		-- Optional: Setup for command line completion (e.g., in cmdline mode)
		cmp.setup.cmdline("/", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = { { name = "buffer" } },
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
}
