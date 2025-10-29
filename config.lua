-- Did I do a good job? Consider donating as this took me a long time to make for free.

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.
-- https://discord.gg/9pCDHmjYwd


Config = {
	Lan = "en",
	System = {
		Debug = false, 	 -- Enable this to help debug the script
		Notify = "gta",
	},
	General = {

		JimShops = false, -- Set to true if using jim-shops

		ExploitDistance = 1.2,  -- Default '1.2'.
		-- This is how close the person needs to be to the floor so they can use chairs
		-- Standing/sitting on vehicles isn't classed as the ground so you may want to raise this to between 5-6
		-- The higher the number, the more chance people have of exploiting no fall damage

		MakeStores = true,  	-- Enable if you want built in stores and locations
	},
}

-- Function for locales
-- Don't touch unless you know what you're doing
-- This needs to be here because it loads before everything else
function locale(section, string)
    if not Config.Lan or Config.Lan == "" then
        print("^1Error^7: ^3Config^7.^3Lan ^1not set^7, ^2falling back to Config.Lan = 'en'")
        Config = Config or {}
        Config.Lan = "en"
    end

    local localTable = Loc[Config.Lan]
    -- If Loc[..] doesn't exist, warn user
    if not localTable then
		print("Locale Table '"..Config.Lan.."' Not Found")
        return "Locale Table '"..Config.Lan.."' Not Found"
    end

    -- If Loc[..].section doesn't exist, warn user
    if not localTable[section] then
		print("^1Error^7: Locale Section: ['"..section.."'] Invalid")
        return "Locale Section: ['"..section.."'] Invalid"
    end

    -- If Loc[..].section.string doesn't exist, warn user
    if not localTable[section][string] then
		print("^1Error^7: Locale String: ['"..section.."']['"..string.."'] Invalid")
        return "Locale String: ['"..string.."'] Invalid"
    end

    -- If no issues, return the string
    return localTable[section][string]
end