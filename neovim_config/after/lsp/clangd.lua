return {
	-- Core executable and feature flags
	cmd = {
		"clangd",
		"--background-index", -- Index project in background for faster navigation
		"--clang-tidy", -- Enable static analysis
		"--completion-style=detailed", -- Provide more info in completion
		"--header-insertion=iwyu", -- Automatically add missing includes
		"--offset-encoding=utf-16", -- Required for some clients to avoid encoding errors
	},

	-- Crucial for "No active clients" issues: Root Detection
	root_markers = {
		"compile_commands.json", -- Standard for CMake/Ninja projects
		"compile_flags.txt", -- Simple fallback for single-directory projects
		".git", -- Git root as a safe fallback
		".clangd", -- Dedicated clangd config file
		"main.cpp", -- Add a common filename for single-file projects
		"Makefile",
		"meson.build",
		"meson_options.txt",
		"build.ninja",
	},

	-- Native v0.12 Support for single-file mode
	workspace_required = false, -- Allows clangd to start even without a detected root

	-- Server-specific settings
	settings = {
		clangd = {
			InlayHints = {
				Designators = true,
				Enabled = true,
				ParameterNames = true,
				DeducedTypes = true,
			},
			fallbackFlags = { "-std=c++20" }, -- Default C++ version if no compile_commands.json
		},
	},
}
