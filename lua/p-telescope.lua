local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["esc"] = actions.close,
			},
		},
		file_ignore_patterns = {
			".git",
			"lazy-lock.json",
			"node_modules",
		},
		dynamic_preview_title = true,
		path_display = { "smart" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	layout_config = {
		horizontal = {
			preview_cutoff = 100,
			preview_width = 0.5,
		},
	},
})
