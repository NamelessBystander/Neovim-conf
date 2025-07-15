return {
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		enabled = true,
		init = false,
		opts = function()
			local dashboard = require("alpha.themes.dashboard")
			local logo = [[
        ..uu.
       ?$""`?i           z'
       `M  .@"          x"
       'Z :#"  .   .    f 8M
       '&H?`  :$f U8   <  MP   x#'
       d#`    XM  $5.  $  M' xM"
     .!">     @  'f`$L:M  R.@!`
    +`  >     R  X  "NXF  R"*L
        k    'f  M   "$$ :E  5.
        %    `~  "    `  'K  'M
            .uH          'E   `h
         .x*`             X     `
      .uf`                *
    .@8     .
   'E9F  uf"          ,     ,
     9h+"   $M    eH. 8b. .8    .....
    .8`     $'   M 'E  `R;'   d?"""`"#
   ` E      @    b  d   9R    ?*     @
     >      K.zM `%M'   9'    Xf   .f
    ;       R'          9     M  .=`
    t                   M     Mx~
    @                  lR    z"
    @                  `   ;"
    ]]

			vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#ff5555", bg = "NONE" })
			vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#F8F8F2", bg = "NONE" })
			vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#BD93F9", bg = "NONE" })

			dashboard.section.header.val = vim.split(logo, "\n")
			-- stylua: ignore
			dashboard.section.buttons.val = {
				dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
				dashboard.button("g", " " .. " Find text", [[<cmd> Telescope live_grep <cr>]]),
				dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
				dashboard.button("p", " " .. " Projects", [[<cmd> NeovimProjectHistory <cr>]]),
				dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
				dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),

				--dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
				--dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
				--dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
				--dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
			}
			for _, button in ipairs(dashboard.section.buttons.val) do
				button.opts.hl = "AlphaButtons"
				button.opts.hl_shortcut = "AlphaShortcut"
			end
			dashboard.section.header.opts.hl = "AlphaHeader"
			dashboard.section.buttons.opts.hl = "AlphaButtons"
			dashboard.section.footer.opts.hl = "AlphaFooter"
			dashboard.opts.layout[1].val = 8
			return dashboard
		end,
		config = function(_, dashboard)
			-- close Lazy and re-open when the dashboard is ready
			if vim.o.filetype == "lazy" then
				vim.cmd.close()
				vim.api.nvim_create_autocmd("User", {
					once = true,
					pattern = "AlphaReady",
					callback = function()
						require("lazy").show()
					end,
				})
			end

			require("alpha").setup(dashboard.opts)

			--vim.api.nvim_create_autocmd("User", {
			--	once = true,
			--	pattern = "LazyVimStarted",
			--	callback = function()
			--		local stats = require("lazy").stats()
			--		local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			--		dashboard.section.footer.val = "⚡ Neovim loaded "
			--			.. stats.loaded
			--			.. "/"
			--			.. stats.count
			--			.. " plugins in "
			--			.. ms
			--			.. "ms"
			--		pcall(vim.cmd.AlphaRedraw)
			--	end,
			--})
		end,
	},
}
