return {
	"saghen/blink.cmp",
	dependencies = {
		{ "folke/lazydev.nvim", opts = {} },
		"xzbdmw/colorful-menu.nvim"
	},
	version = "1.*",
	opts_extend = { "sources.default" },
	opts = {
		keymap = { preset = "super-tab" },
		cmdline = { enabled = false },
		sources = {
			default = { "lazydev", "lsp", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
			},
		},
		appearance = { nerd_font_variant = "normal" },
		fuzzy = { implementation = 'prefer_rust_with_warning' },
		completion = {
			ghost_text = { enabled = true },
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 }
					},
					components = {
						label = {
							text = function(ctx)
								return require("colorful-menu").blink_components_text(ctx)
							end,
							highlight = function(ctx)
								return require("colorful-menu").blink_components_highlight(ctx)
							end,
						}
					}
				}
			}
		},
	}
}
