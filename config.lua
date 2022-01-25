print("Jim-Chairs - Portable Chair Script by Jimathy")


-- Did I do a good job? Consider donating as this took me a long time to make for free.

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.
-- https://discord.gg/xKgQZ6wZvS


Config = {}

Config.Target = true   -- LEAVE THIS ENABLED IF USING QB-TARGET

Config.Locations =  {
	[1] = { location = vector3(2746.19, 3469.28, 55.67-1.03), heading = 243.34, store = "Store1", },
	[2] = { location = vector3(194.77, -1291.15, 29.32-1.03), heading = 245.95, store = "Store2", },
	[3] = { location = vector3(-490.19, 28.06, 46.3-1.03), heading = 172.08, store = "Store3", },
	[4] = { location = vector3(-39.55, 6471.5, 31.5-1.03), heading = 45.78, store = "Store4", },
	[5] = { location = vector3(1540.47, 3703.03, 34.54-1.03), heading = 11.25, store = "Store5", },
}

Config.PedList = {
	{ model = "S_M_Y_Construct_01", coords = Config.Locations[1].location, heading = Config.Locations[1].heading, gender = "male", scenario = "WORLD_HUMAN_CLIPBOARD", },
	{ model = "S_M_Y_Construct_01", coords = Config.Locations[2].location, heading = Config.Locations[2].heading, gender = "male", scenario = "WORLD_HUMAN_CLIPBOARD", },
	{ model = "S_M_Y_Construct_01", coords = Config.Locations[3].location, heading = Config.Locations[3].heading, gender = "male", scenario = "WORLD_HUMAN_CLIPBOARD", },
	{ model = "S_M_Y_Construct_01", coords = Config.Locations[4].location, heading = Config.Locations[4].heading, gender = "male", scenario = "WORLD_HUMAN_CLIPBOARD", },
	{ model = "S_M_Y_Construct_01", coords = Config.Locations[5].location, heading = Config.Locations[5].heading, gender = "male", scenario = "WORLD_HUMAN_CLIPBOARD", },
}


--PRICES ARE ALL "0" CHANGE THEM IF YOU WANT TO CHARGE FOR THEM

Config.Store1 = {
    label = "Dining Chair Store",
    slots = 25,
    items = {
        [1] = { name = "chair70", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chair96", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "chair45", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "chair46", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "chair6", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "chair68", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "chair67", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "chair103", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "chair104", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        [10] = { name = "chair102", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
        [11] = { name = "chair22", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
        [12] = { name = "chair23", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
        [13] = { name = "chair44", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
        [14] = { name = "chair7", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
        [15] = { name = "chair15", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
        [16] = { name = "chair9", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
        [17] = { name = "chair16", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
        [18] = { name = "chair18", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
        [19] = { name = "chair19", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
        [20] = { name = "chair48", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
        [21] = { name = "chair49", price = 0, amount = 50, info = {}, type = "item", slot = 21, },
        [22] = { name = "chair69", price = 0, amount = 50, info = {}, type = "item", slot = 22, },
        [23] = { name = "chair37", price = 0, amount = 50, info = {}, type = "item", slot = 23, },
        [24] = { name = "chair105", price = 0, amount = 50, info = {}, type = "item", slot = 24, },
        [25] = { name = "chair110", price = 0, amount = 50, info = {}, type = "item", slot = 25, },
    }
}
Config.Store2 = {
    label = "House Chair Store",
    slots = 36,
    items = {
        [1] = { name = "chair71", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chair107", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "chair84", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "chair1", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "chair2", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "chair3", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "chair8", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "chair13", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "chair14", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        [10] = { name = "chair17", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
        [11] = { name = "chair40", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
        [12] = { name = "chair50", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
        [13] = { name = "chair58", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
        [14] = { name = "chair59", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
        [15] = { name = "chair61", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
        [16] = { name = "chair65", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
        [17] = { name = "chair73", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
        [18] = { name = "chair74", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
        [19] = { name = "chair75", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
        [20] = { name = "chair78", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
        [21] = { name = "chair80", price = 0, amount = 50, info = {}, type = "item", slot = 21, },
        [22] = { name = "chair82", price = 0, amount = 50, info = {}, type = "item", slot = 22, },
        [23] = { name = "chair83", price = 0, amount = 50, info = {}, type = "item", slot = 23, },
        [24] = { name = "chair85", price = 0, amount = 50, info = {}, type = "item", slot = 24, },
        [25] = { name = "chair86", price = 0, amount = 50, info = {}, type = "item", slot = 25, },
        [26] = { name = "chair87", price = 0, amount = 50, info = {}, type = "item", slot = 26, },
        [27] = { name = "chair88", price = 0, amount = 50, info = {}, type = "item", slot = 27, },
        [28] = { name = "chair89", price = 0, amount = 50, info = {}, type = "item", slot = 28, },
        [29] = { name = "chair90", price = 0, amount = 50, info = {}, type = "item", slot = 29, },
        [30] = { name = "chair91", price = 0, amount = 50, info = {}, type = "item", slot = 30, },
        [31] = { name = "chair92", price = 0, amount = 50, info = {}, type = "item", slot = 31, },
        [32] = { name = "chair95", price = 0, amount = 50, info = {}, type = "item", slot = 32, },
        [33] = { name = "chair101", price = 0, amount = 50, info = {}, type = "item", slot = 33, },
        [34] = { name = "chair81", price = 0, amount = 50, info = {}, type = "item", slot = 34, },
        [35] = { name = "chair106", price = 0, amount = 50, info = {}, type = "item", slot = 35, },
        [36] = { name = "chair108", price = 0, amount = 50, info = {}, type = "item", slot = 36, },
    }
}
Config.Store3 = {
    label = "Office Chair Store",
    slots = 16,
    items = {
        [1] = { name = "chair25", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chair26", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "chair10", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "chair11", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "chair20", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "chair27", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "chair28", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "chair29", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "chair30", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        [10] = { name = "chair31", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
        [11] = { name = "chair32", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
        [12] = { name = "chair33", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
        [13] = { name = "chair34", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
        [14] = { name = "chair35", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
        [15] = { name = "chair36", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
        [16] = { name = "chair60", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
        [17] = { name = "chair76", price = 0, amount = 50, info = {}, type = "item", slot = 17, },
        [18] = { name = "chair77", price = 0, amount = 50, info = {}, type = "item", slot = 18, },
        [19] = { name = "chair79", price = 0, amount = 50, info = {}, type = "item", slot = 19, },
        [20] = { name = "chair93", price = 0, amount = 50, info = {}, type = "item", slot = 20, },
        [21] = { name = "chair94", price = 0, amount = 50, info = {}, type = "item", slot = 21, },
        [22] = { name = "chair98", price = 0, amount = 50, info = {}, type = "item", slot = 22, },
        [23] = { name = "chair99", price = 0, amount = 50, info = {}, type = "item", slot = 23, },
        [24] = { name = "chair100", price = 0, amount = 50, info = {}, type = "item", slot = 24, },
    }
}
Config.Store4 = {
    label = "Outdoor Chair Store",
    slots = 16,
    items = {
        [1] = { name = "chair62", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chair63", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "chair64", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "chair50", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "chair97", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "chair21", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "chair39", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "chair66", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "chair109", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        [10] = { name = "chair41", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
        [11] = { name = "chair42", price = 0, amount = 50, info = {}, type = "item", slot = 11, },
        [12] = { name = "chair43", price = 0, amount = 50, info = {}, type = "item", slot = 12, },
        [13] = { name = "chair47", price = 0, amount = 50, info = {}, type = "item", slot = 13, },
        [14] = { name = "chair51", price = 0, amount = 50, info = {}, type = "item", slot = 14, },
        [15] = { name = "chair53", price = 0, amount = 50, info = {}, type = "item", slot = 15, },
        [16] = { name = "chair72", price = 0, amount = 50, info = {}, type = "item", slot = 16, },
    }
}
Config.Store5 = {
    label = "Used Chair Store",
    slots = 9,
    items = {
        [1] = { name = "chair4", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chair5", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "chair12", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "chair24", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "chair38", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "chair52", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "chair54", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "chair55", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "chair56", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
    }
}