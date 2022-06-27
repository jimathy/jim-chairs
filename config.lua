print("Jim-Chairs v1.1 - Portable Chair Script by Jimathy")

-- Did I do a good job? Consider donating as this took me a long time to make for free.

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.
-- https://discord.gg/xKgQZ6wZvS


Config = {
	Debug = false, 	 -- Enable this to help debug the script
	JimShops = false, -- Set to true if using jim-shops
	
	ExploitDistance = 1.2,  -- Default '1.2'.
							-- This is how close the person needs to be to the floor so they can use chairs
							-- Standing/sitting on vehicles isn't classed as the ground so you may want to raise this to between 5-6
							-- The higher the number, the more chance people have of exploiting no fall damage
							
	Locations =  {
		[1] = { 
			coords = vector4(2746.19, 3469.28, 55.67, 243.34), 
			label = "Chair Store",
			store = 1,
			ped = { 
				model = `S_M_Y_Construct_01`,
				gender = "male",
				scenario = "WORLD_HUMAN_CLIPBOARD",
			},
		},
		[2] = {
			coords = vector4(194.77, -1291.15, 29.32, 245.95),
			label = "Chair Store",
			store = 2,
			ped = { 
				model = `S_M_Y_Construct_01`,
				gender = "male",
				scenario = "WORLD_HUMAN_CLIPBOARD",
			},
		},
		[3] = { 
			coords = vector4(-490.19, 28.06, 46.3, 172.08),
			label = "Chair Store",
			store = 3,
			ped = { 
				model = `S_M_Y_Construct_01`,
				gender = "male",
				scenario = "WORLD_HUMAN_CLIPBOARD",
			},
		},
		[4] = { 
			coords = vector4(-39.55, 6471.5, 31.5, 45.78),
			label = "Chair Store",
			store = 4,
			ped = { 
				model = `S_M_Y_Construct_01`,
				gender = "male",
				scenario = "WORLD_HUMAN_CLIPBOARD",
			},
		},
		[5] = { 
			coords = vector4(1540.47, 3703.03, 34.54, 11.25),
			label = "Chair Store",
			store = 5,
			ped = { 
				model = `S_M_Y_Construct_01`,
				gender = "male",
				scenario = "WORLD_HUMAN_CLIPBOARD",
			},
		},
	},
}

--PRICES ARE ALL "0" CHANGE THEM IF YOU WANT TO CHARGE FOR THEM
Stores = {
	[1] = {
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
	},
	[2] = {
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
		},
	},
	[3] = {
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
		},
	},
	[4] = {
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
		},
	},
	[5] = {
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
		},
	},
}