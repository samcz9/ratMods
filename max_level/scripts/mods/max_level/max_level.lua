local mod = get_mod("max_level")


mod:hook(BackendInterfaceHeroAttributesPlayFab, "get", function (func, self, hero_name, attribute_name)
    if attribute_name == "experience" then
        return 99999999999
    end
    return func(self, hero_name, attribute_name)
end)

mod:hook(ExperienceSettings, "get_level", function (func, self, experience)
	
	return func(self, 99999999999)
end)


mod:hook(BackendInterfaceTalentsPlayfab, "_validate_talents", function (func, self, career_name, career_talents)
	-- WE AINT VALIDATING BOYS --
end)

