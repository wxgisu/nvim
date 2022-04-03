local previewers = require("telescope.previewers")
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = actions.select_default,
                ["<C-s>"] = actions.select_horizontal,
                ["<CR>"] = actions.select_horizontal,
            },
             
        },
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
})

-- require("telescope").load_extension("git_worktree") -- TODO: install worktree
require("telescope").load_extension("fzy_native")
