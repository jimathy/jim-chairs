-- Did I do a good job? Consider donating as this took me a long time to make for free.

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.
-- https://discord.gg/xKgQZ6wZvS


Config = {
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

function locale(section, string)
	if not string then
		print(section, "string is nil")
	end
    if not Config.Lan or Config.Lan == "" then return print("Error, no langauge set") end
    local localTable = Loc[Config.Lan]
    if not localTable then return "Locale Table Not Found" end
    if not localTable[section] then return "["..section.."] Invalid" end
    if not localTable[section][string] then return "["..string.."] Invalid" end
    return localTable[section][string]
end