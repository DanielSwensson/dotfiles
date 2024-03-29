require('lualine').setup {
	options = {
		theme = 'gruvbox',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'diff', 'diagnostics'},
		lualine_c = {
			{
				'filename',
				path = 1,
			}
		},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_c = {
			{
				'filename',
				path = 1,
			}
		},
    lualine_x = {},
	},
}
