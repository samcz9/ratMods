return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`max_level` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("max_level", {
			mod_script       = "scripts/mods/max_level/max_level",
			mod_data         = "scripts/mods/max_level/max_level_data",
			mod_localization = "scripts/mods/max_level/max_level_localization",
		})
	end,
	packages = {
		"resource_packages/max_level/max_level",
	},
}
