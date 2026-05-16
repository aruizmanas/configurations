return {
	settings = {
		pyright = {
			disableLanguageServices = false,
			disableOrganizeImports = true,
			plugins = {
				pycodestyle = {
					ignore = { "W391", "E265", "E402", "E226" },
				},
			},
		},
		python = {
			analysis = {
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly",
			},
			linting = {
				pycodestyleEnabled = true,
			},
		},
	},
}
