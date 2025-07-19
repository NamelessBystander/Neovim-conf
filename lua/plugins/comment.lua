return {
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = {
				---Line-comment toggle keymap
				line = "gcc",
				---Block-comment toggle keymap
				block = "gbc",
			},
			extra = {
				---Add comment on the line above
				above = "gcO",
				---Add comment on the line below
				below = "gco",
				---Add comment at the end of line
				eol = "gcA",
			},
			opleader = {
				---Line-comment keymap
				line = "gc",
				---Block-comment keymap
				block = "gb",
			},
		},
	},
}
