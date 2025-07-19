_G.current_tab_spaces = 4

function _G.toggle_tabs()
	if _G.current_tab_spaces == 4 then
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.softtabstop = 2
		_G.current_tab_spaces = 2
		print("Tab settings: 2 spaces")
	else
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.softtabstop = 4
		_G.current_tab_spaces = 4
		print("Tab settings: 4 spaces")
	end
end

-- Create a Neovim user command to call the Lua function
vim.api.nvim_create_user_command("ToggleTabs", _G.toggle_tabs, {})
