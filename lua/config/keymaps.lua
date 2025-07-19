local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope find word" })

vim.keymap.set("n", "<leader>ph", ":NeovimProjectHistory <cr>", { desc = "Telescope find word" })
vim.keymap.set("n", "<leader>pl", ":NeovimProjectDiscover <cr>", { desc = "Telescope find word" })

vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Netrw" })
vim.keymap.set("n", "<leader>h", ":Alpha<CR>", { desc = "Home page" })

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>tw", ":set wrap!<CR>", { desc = "Toggle word wrap" })
vim.keymap.set("n", "<leader>tt", ":ToggleTabs<CR>", { desc = "Toggle word wrap" })
