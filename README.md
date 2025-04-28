# jim-chairs
Portable Chair Item Script

I hope you have fun with this script and that it brings RP to your server

### If you need support I have a discord server available, it helps me keep track of issues and give better support.
## https://discord.gg/xKgQZ6wZvS

### If you think I did a good job here, consider donating as it keeps by lights on and my cat fat/floofy:
## https://ko-fi.com/jixelpatterns

---
# What is this?
- This is portable/folding chair script that handles up to 110 chairs
- All chairs are from base GTA
- Images were all created by me from the 3D models of each chair

![](https://cdn.discordapp.com/attachments/934579947069145240/935652852318236712/ezgif-5-58451a829d.gif)


---
# Installation

## QB-Core:

- I always recommend starting my scripts **AFTER** `[qb]` not inside it as it can mess with any dependancies on server load
- I have a separate folder called `[jim]` (that is also in the resources folder) that starts WAY after everything else.
- This ensure's it has everything it requires before trying to load
- Example of my load order:
```
# QBCore & Extra stuff
ensure qb-core
ensure [qb]
ensure [standalone]
ensure [voice]
ensure [defaultmaps]
ensure [vehicles]

# Extra Jim Stuff
ensure [jim]
```

## Images
- Add the item images to your inventory script
- Navigate to `[qb] > qb-inventory > html > images` and place them here

## Items
- Navigate to `[qb] > qb-core > shared > items.lua`

```lua
    chair1 = { name = "chair1", label = "Black Couch", weight = 100, type = "item", image = "chair1.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair2 = { name = "chair2", label = "Wood Lounger", weight = 100, type = "item", image = "chair2.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair3 = { name = "chair3", label = "Metal Deco Chair", weight = 100, type = "item", image = "chair3.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair4 = { name = "chair4", label = "Old Metal Chair", weight = 100, type = "item", image = "chair4.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair5 = { name = "chair5", label = "Old Office Chair", weight = 100, type = "item", image = "chair5.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair6 = { name = "chair6", label = "Grey Dining Chair", weight = 100, type = "item", image = "chair6.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair7 = { name = "chair7", label = "Fancy Dining Chair", weight = 100, type = "item", image = "chair7.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair8 = { name = "chair8", label = "Lime Couch", weight = 100, type = "item", image = "chair8.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair9 = { name = "chair9", label = "Standard Dining Chair", weight = 100, type = "item", image = "chair9.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair10 = { name = "chair10", label = "Black Office Couch", weight = 100, type = "item", image = "chair10.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair11 = { name = "chair11", label = "Black Office Chair", weight = 100, type = "item", image = "chair11.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair12 = { name = "chair12", label = "Used Brown Office Chair", weight = 100, type = "item", image = "chair12.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair13 = { name = "chair13", label = "Orange Leather Chair", weight = 100, type = "item", image = "chair13.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair14 = { name = "chair14", label = "White Leather Chair", weight = 100, type = "item", image = "chair14.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair15 = { name = "chair15", label = "Old Dining Chair", weight = 100, type = "item", image = "chair15.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair16 = { name = "chair16", label = "White Dining Chair", weight = 100, type = "item", image = "chair16.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair17 = { name = "chair17", label = "Green Couch", weight = 100, type = "item", image = "chair17.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair18 = { name = "chair18", label = "Blue Dining Chair", weight = 100, type = "item", image = "chair18.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair19 = { name = "chair19", label = "White Dining Chair", weight = 100, type = "item", image = "chair19.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair20 = { name = "chair20", label = "Blue Office Chair", weight = 100, type = "item", image = "chair20.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair21 = { name = "chair21", label = "Metal Lawn Chair", weight = 100, type = "item", image = "chair21.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair22 = { name = "chair22", label = "Posh Dining Chair", weight = 100, type = "item", image = "chair22.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair23 = { name = "chair23", label = "Posh White Dining Chair", weight = 100, type = "item", image = "chair23.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair24 = { name = "chair24", label = "Old White Chair", weight = 100, type = "item", image = "chair24.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair25 = { name = "chair25", label = "Red Plastic Chair", weight = 100, type = "item", image = "chair25.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair26 = { name = "chair26", label = "Blue Plastic Chair", weight = 100, type = "item", image = "chair26.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair27 = { name = "chair27", label = "Black Leather Chair", weight = 100, type = "item", image = "chair27.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair28 = { name = "chair28", label = "Grey Office Chair", weight = 100, type = "item", image = "chair28.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair29 = { name = "chair29", label = "Blue Office Chair", weight = 100, type = "item", image = "chair29.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair30 = { name = "chair30", label = "Light Grey Office Chair", weight = 100, type = "item", image = "chair30.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair31 = { name = "chair31", label = "Black Office Chair", weight = 100, type = "item", image = "chair31.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair32 = { name = "chair32", label = "Luxury Office Chair", weight = 100, type = "item", image = "chair32.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair33 = { name = "chair33", label = "Black Comfy Office Chair", weight = 100, type = "item", image = "chair33.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair34 = { name = "chair34", label = "Red Office Chair", weight = 100, type = "item", image = "chair34.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair35 = { name = "chair35", label = "Ergonomic Office Chair", weight = 100, type = "item", image = "chair35.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair36 = { name = "chair36", label = "Comfy Ergonomic Office Chair",weight = 100, type = "item", image = "chair36.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair37 = { name = "chair37", label = "Dark Brown Dining Chair", weight = 100, type = "item", image = "chair37.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair38 = { name = "chair38", label = "Ol' Rocking Chair", weight = 100, type = "item", image = "chair38.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair39 = { name = "chair39", label = "Striped Wicker Chair", weight = 100, type = "item", image = "chair39.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair40 = { name = "chair40", label = "Grey Leather Chair", weight = 100, type = "item", image = "chair40.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair41 = { name = "chair41", label = "Grey Metal Chair", weight = 100, type = "item", image = "chair41.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair42 = { name = "chair42", label = "Brown Metal Chair", weight = 100, type = "item", image = "chair42.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair43 = { name = "chair43", label = "Wicker Lawn Chair", weight = 100, type = "item", image = "chair43.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair44 = { name = "chair44", label = "Old Posh Dining Chair", weight = 100, type = "item", image = "chair44.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair45 = { name = "chair45", label = "Dark Brown Dining Chair", weight = 100, type = "item", image = "chair45.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair46 = { name = "chair46", label = "White Dining Chair", weight = 100, type = "item", image = "chair46.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair47 = { name = "chair47", label = "Black Wicker Chair", weight = 100, type = "item", image = "chair47.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair48 = { name = "chair48", label = "Brown Metal Dining Chair", weight = 100, type = "item", image = "chair48.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair49 = { name = "chair49", label = "Brown Wodd Dining Chair", weight = 100, type = "item", image = "chair49.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair50 = { name = "chair50", label = "Plastic Lawn Chair", weight = 100, type = "item", image = "chair50.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair51 = { name = "chair51", label = "Green Lawn Chair", weight = 100, type = "item", image = "chair51.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair52 = { name = "chair52", label = "Worn Metal Chair", weight = 100, type = "item", image = "chair52.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair53 = { name = "chair53", label = "Fancy Garden Chair", weight = 100, type = "item", image = "chair53.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair54 = { name = "chair54", label = "Old Wooden Chair", weight = 100, type = "item", image = "chair54.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair55 = { name = "chair55", label = "Old Metal ", weight = 100, type = "item", image = "chair55.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair56 = { name = "chair56", label = "Old Couch", weight = 100, type = "item", image = "chair56.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair57 = { name = "chair57", label = "Purple Leather Chair", weight = 100, type = "item", image = "chair57.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair58 = { name = "chair58", label = "Zebra Print Couch", weight = 100, type = "item", image = "chair58.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair59 = { name = "chair59", label = "Lime Chair", weight = 100, type = "item", image = "chair59.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair60 = { name = "chair60", label = "Brown Office Chair", weight = 100, type = "item", image = "chair60.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair61 = { name = "chair61", label = "Cream Chair", weight = 100, type = "item", image = "chair61.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair62 = { name = "chair62", label = "Green Camping Chair", weight = 100, type = "item", image = "chair62.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair63 = { name = "chair63", label = "Blue Camping Chair", weight = 100, type = "item", image = "chair63.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair64 = { name = "chair64", label = "Striped Camping Chair", weight = 100, type = "item", image = "chair64.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair65 = { name = "chair65", label = "Posh Lounger", weight = 100, type = "item", image = "chair65.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair66 = { name = "chair66", label = "Yellow Wicker Chair", weight = 100, type = "item", image = "chair66.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair67 = { name = "chair67", label = "White Metal Dining Chair", weight = 100, type = "item", image = "chair67.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair68 = { name = "chair68", label = "White Metal Dining Chair 2",weight = 100, type = "item", image = "chair68.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair69 = { name = "chair69", label = "Dark Material Dining Chair",weight = 100, type = "item", image = "chair69.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair70 = { name = "chair70", label = "Dark Brown Metal Chair", weight = 100, type = "item", image = "chair70.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair71 = { name = "chair71", label = "Brown Lounger", weight = 100, type = "item", image = "chair71.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair72 = { name = "chair72", label = "Grey Sun Lounger", weight = 100, type = "item", image = "chair72.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair73 = { name = "chair73", label = "Dark Brown Wood Chair", weight = 100, type = "item", image = "chair73.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair74 = { name = "chair74", label = "Yellow Deco Chair", weight = 100, type = "item", image = "chair74.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair75 = { name = "chair75", label = "Oak Chair", weight = 100, type = "item", image = "chair75.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair76 = { name = "chair76", label = "Black Deco Chair", weight = 100, type = "item", image = "chair76.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair77 = { name = "chair77", label = "Yellow Office Chair", weight = 100, type = "item", image = "chair77.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair78 = { name = "chair78", label = "Wine Red Chair", weight = 100, type = "item", image = "chair78.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair79 = { name = "chair79", label = "Black Office Chair", weight = 100, type = "item", image = "chair79.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair80 = { name = "chair80", label = "Orange Louncher", weight = 100, type = "item", image = "chair80.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair81 = { name = "chair81", label = "Blue Deco Chair", weight = 100, type = "item", image = "chair81.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair82 = { name = "chair82", label = "Small Black Stool", weight = 100, type = "item", image = "chair82.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair83 = { name = "chair83", label = "Orange Couch", weight = 100, type = "item", image = "chair83.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair84 = { name = "chair84", label = "Orange Deco Couch", weight = 100, type = "item", image = "chair84.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair85 = { name = "chair85", label = "Wine Red Couch", weight = 100, type = "item", image = "chair85.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair86 = { name = "chair86", label = "Red Couch", weight = 100, type = "item", image = "chair86.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair87 = { name = "chair87", label = "White Couch", weight = 100, type = "item", image = "chair87.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair88 = { name = "chair88", label = "Black Deco Couch", weight = 100, type = "item", image = "chair88.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair89 = { name = "chair89", label = "Light Blue Couch", weight = 100, type = "item", image = "chair89.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair90 = { name = "chair90", label = "White Couch", weight = 100, type = "item", image = "chair90.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair91 = { name = "chair91", label = "White Leather Chair", weight = 100, type = "item", image = "chair91.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair92 = { name = "chair92", label = "Brown Couch", weight = 100, type = "item", image = "chair92.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair93 = { name = "chair93", label = "Brown Luxury Office Chair",weight = 100, type = "item", image = "chair93.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair94 = { name = "chair94", label = "Grey Luxury Office Chair", weight = 100, type = "item", image = "chair94.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair95 = { name = "chair95", label = "Dark Brown Couch", weight = 100, type = "item", image = "chair95.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair96 = { name = "chair96", label = "Light Brown Metal Chair", weight = 100, type = "item", image = "chair96.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair97 = { name = "chair97", label = "Plastic Lawn Chair 2", weight = 100, type = "item", image = "chair97.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair98 = { name = "chair98", label = "Red/Green Gamer Chair", weight = 100, type = "item", image = "chair98.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair99 = { name = "chair99", label = "Gamer Chair", weight = 100, type = "item", image = "chair99.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair100 = { name = "chair100", label = "Blue Metal Chair", weight = 100, type = "item", image = "chair100.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair101 = { name = "chair101", label = "Black Deco Chair", weight = 100, type = "item", image = "chair101.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair102 = { name = "chair102", label = "Red Deco Chair", weight = 100, type = "item", image = "chair102.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair103 = { name = "chair103", label = "Green Metal Dining Chair", weight = 100, type = "item", image = "chair103.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair104 = { name = "chair104", label = "Blue Metal Dining Chair", weight = 100, type = "item", image = "chair104.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair105 = { name = "chair105", label = "Light Material Dining Chair",weight = 100, type = "item", image = "chair105.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair106 = { name = "chair106", label = "Purple Deco Chair", weight = 100, type = "item", image = "chair106.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair107 = { name = "chair107", label = "Red Deco Chair", weight = 100, type = "item", image = "chair107.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair108 = { name = "chair108", label = "White Casino Chair", weight = 100, type = "item", image = "chair108.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair109 = { name = "chair109", label = "Cream Wicker Chair", weight = 100, type = "item", image = "chair109.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
    chair110 = { name = "chair110", label = "Black Metal Dining Chair", weight = 100, type = "item", image = "chair110.png", unique = false, useable = true, shouldClose = true, combinable = nil, description = "" },
```

## QB-Core:

- I always recommend starting my scripts **AFTER** `[qb]` not inside it as it can mess with any dependancies on server load
- I have a separate folder called `[jim]` (that is also in the resources folder) that starts WAY after everything else.
- This ensure's it has everything it requires before trying to load
- Example of my load order:
```
ensure [ox]
ensure [standalone]
ensure [voice]
ensure [defaultmaps]
ensure [vehicles]

# Extra Jim Stuff
ensure [jim]
```

## Images
- Add the item images to your inventory script
- Navigate to `[ox] > ox_inventory > web > images` and place them here

## Items
- Navigate to `[ox] > ox_inventory > data > items.lua`

```lua
    ["chair1"] = {
        label = "Black Couch", weight = 100, stack = false, close = true,
        client = { image = "chair1.png", event = "jim-chairs:client:Use", item = 1 },
    },
    ["chair2"] = {
        label = "Wood Lounger", weight = 100, stack = false, close = true,
        client = { image = "chair2.png", event = "jim-chairs:client:Use", item = 2 },
    },
    ["chair3"] = {
        label = "Metal Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair3.png", event = "jim-chairs:client:Use", item = 3 },
    },
    ["chair4"] = {
        label = "Old Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair4.png", event = "jim-chairs:client:Use", item = 4 },
    },
    ["chair5"] = {
        label = "Old Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair5.png", event = "jim-chairs:client:Use", item = 5 },
    },
    ["chair6"] = {
        label = "Grey Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair6.png", event = "jim-chairs:client:Use", item = 6 },
    },
    ["chair7"] = {
        label = "Fancy Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair7.png", event = "jim-chairs:client:Use", item = 7 },
    },
    ["chair8"] = {
        label = "Lime Couch", weight = 100, stack = false, close = true,
        client = { image = "chair8.png", event = "jim-chairs:client:Use", item = 8 },
    },
    ["chair9"] = {
        label = "Standard Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair9.png", event = "jim-chairs:client:Use", item = 9 },
    },
    ["chair10"] = {
        label = "Black Office Couch", weight = 100, stack = false, close = true,
        client = { image = "chair10.png", event = "jim-chairs:client:Use", item = 10 },
    },
    ["chair11"] = {
        label = "Black Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair11.png", event = "jim-chairs:client:Use", item = 11 },
    },
    ["chair12"] = {
        label = "Used Brown Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair12.png", event = "jim-chairs:client:Use", item = 12 },
    },
    ["chair13"] = {
        label = "Orange Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair13.png", event = "jim-chairs:client:Use", item = 13 },
    },
    ["chair14"] = {
        label = "White Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair14.png", event = "jim-chairs:client:Use", item = 14 },
    },
    ["chair15"] = {
        label = "Old Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair15.png", event = "jim-chairs:client:Use", item = 15 },
    },
    ["chair16"] = {
        label = "White Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair16.png", event = "jim-chairs:client:Use", item = 16 },
    },
    ["chair17"] = {
        label = "Green Couch", weight = 100, stack = false, close = true,
        client = { image = "chair17.png", event = "jim-chairs:client:Use", item = 17 },
    },
    ["chair18"] = {
        label = "Blue Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair18.png", event = "jim-chairs:client:Use", item = 18 },
    },
    ["chair19"] = {
        label = "White Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair19.png", event = "jim-chairs:client:Use", item = 19 },
    },
    ["chair20"] = {
        label = "Blue Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair20.png", event = "jim-chairs:client:Use", item = 20 },
    },
    ["chair21"] = {
        label = "Metal Lawn Chair", weight = 100, stack = false, close = true,
        client = { image = "chair21.png", event = "jim-chairs:client:Use", item = 21 },
    },
    ["chair22"] = {
        label = "Posh Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair22.png", event = "jim-chairs:client:Use", item = 22 },
    },
    ["chair23"] = {
        label = "Posh White Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair23.png", event = "jim-chairs:client:Use", item = 23 },
    },
    ["chair24"] = {
        label = "Old White Chair", weight = 100, stack = false, close = true,
        client = { image = "chair24.png", event = "jim-chairs:client:Use", item = 24 },
    },
    ["chair25"] = {
        label = "Red Plastic Chair", weight = 100, stack = false, close = true,
        client = { image = "chair25.png", event = "jim-chairs:client:Use", item = 25 },
    },
    ["chair26"] = {
        label = "Blue Plastic Chair", weight = 100, stack = false, close = true,
        client = { image = "chair26.png", event = "jim-chairs:client:Use", item = 26 },
    },
    ["chair27"] = {
        label = "Black Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair27.png", event = "jim-chairs:client:Use", item = 27 },
    },
    ["chair28"] = {
        label = "Grey Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair28.png", event = "jim-chairs:client:Use", item = 28 },
    },
    ["chair29"] = {
        label = "Blue Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair29.png", event = "jim-chairs:client:Use", item = 29 },
    },
    ["chair30"] = {
        label = "Light Grey Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair30.png", event = "jim-chairs:client:Use", item = 30 },
    },
    ["chair31"] = {
        label = "Black Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair31.png", event = "jim-chairs:client:Use", item = 31 },
    },
    ["chair32"] = {
        label = "Luxury Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair32.png", event = "jim-chairs:client:Use", item = 32 },
    },
    ["chair33"] = {
        label = "Black Comfy Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair33.png", event = "jim-chairs:client:Use", item = 33 },
    },
    ["chair34"] = {
        label = "Red Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair34.png", event = "jim-chairs:client:Use", item = 34 },
    },
    ["chair35"] = {
        label = "Ergonomic Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair35.png", event = "jim-chairs:client:Use", item = 35 },
    },
    ["chair36"] = {
        label = "Comfy Ergonomic Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair36.png", event = "jim-chairs:client:Use", item = 36 },
    },
    ["chair37"] = {
        label = "Dark Brown Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair37.png", event = "jim-chairs:client:Use", item = 37 },
    },
    ["chair38"] = {
        label = "Ol' Rocking Chair", weight = 100, stack = false, close = true,
        client = { image = "chair38.png", event = "jim-chairs:client:Use", item = 38 },
    },
    ["chair39"] = {
        label = "Striped Wicker Chair", weight = 100, stack = false, close = true,
        client = { image = "chair39.png", event = "jim-chairs:client:Use", item = 39 },
    },
    ["chair40"] = {
        label = "Grey Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair40.png", event = "jim-chairs:client:Use", item = 40 },
    },
    ["chair41"] = {
        label = "Grey Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair41.png", event = "jim-chairs:client:Use", item = 41 },
    },
    ["chair42"] = {
        label = "Brown Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair42.png", event = "jim-chairs:client:Use", item = 42 },
    },
    ["chair43"] = {
        label = "Wicker Lawn Chair", weight = 100, stack = false, close = true,
        client = { image = "chair43.png", event = "jim-chairs:client:Use", item = 43 },
    },
    ["chair44"] = {
        label = "Old Posh Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair44.png", event = "jim-chairs:client:Use", item = 44 },
    },
    ["chair45"] = {
        label = "Dark Brown Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair45.png", event = "jim-chairs:client:Use", item = 45 },
    },
    ["chair46"] = {
        label = "White Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair46.png", event = "jim-chairs:client:Use", item = 46 },
    },
    ["chair47"] = {
        label = "Black Wicker Chair", weight = 100, stack = false, close = true,
        client = { image = "chair47.png", event = "jim-chairs:client:Use", item = 47 },
    },
    ["chair48"] = {
        label = "Brown Metal Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair48.png", event = "jim-chairs:client:Use", item = 48 },
    },
    ["chair49"] = {
        label = "Brown Wodd Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair49.png", event = "jim-chairs:client:Use", item = 49 },
    },
    ["chair50"] = {
        label = "Plastic Lawn Chair", weight = 100, stack = false, close = true,
        client = { image = "chair50.png", event = "jim-chairs:client:Use", item = 50 },
    },
    ["chair51"] = {
        label = "Green Lawn Chair", weight = 100, stack = false, close = true,
        client = { image = "chair51.png", event = "jim-chairs:client:Use", item = 51 },
    },
    ["chair52"] = {
        label = "Worn Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair52.png", event = "jim-chairs:client:Use", item = 52 },
    },
    ["chair53"] = {
        label = "Fancy Garden Chair", weight = 100, stack = false, close = true,
        client = { image = "chair53.png", event = "jim-chairs:client:Use", item = 53 },
    },
    ["chair54"] = {
        label = "Old Wooden Chair", weight = 100, stack = false, close = true,
        client = { image = "chair54.png", event = "jim-chairs:client:Use", item = 54 },
    },
    ["chair55"] = {
        label = "Old Metal", weight = 100, stack = false, close = true,
        client = { image = "chair55.png", event = "jim-chairs:client:Use", item = 55 },
    },
    ["chair56"] = {
        label = "Old Couch", weight = 100, stack = false, close = true,
        client = { image = "chair56.png", event = "jim-chairs:client:Use", item = 56 },
    },
    ["chair57"] = {
        label = "Purple Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair57.png", event = "jim-chairs:client:Use", item = 57 },
    },
    ["chair58"] = {
        label = "Zebra Print Couch", weight = 100, stack = false, close = true,
        client = { image = "chair58.png", event = "jim-chairs:client:Use", item = 58 },
    },
    ["chair59"] = {
        label = "Lime Chair", weight = 100, stack = false, close = true,
        client = { image = "chair59.png", event = "jim-chairs:client:Use", item = 59 },
    },
    ["chair60"] = {
        label = "Brown Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair60.png", event = "jim-chairs:client:Use", item = 60 },
    },
    ["chair61"] = {
        label = "Cream Chair", weight = 100, stack = false, close = true,
        client = { image = "chair61.png", event = "jim-chairs:client:Use", item = 61 },
    },
    ["chair62"] = {
        label = "Green Camping Chair", weight = 100, stack = false, close = true,
        client = { image = "chair62.png", event = "jim-chairs:client:Use", item = 62 },
    },
    ["chair63"] = {
        label = "Blue Camping Chair", weight = 100, stack = false, close = true,
        client = { image = "chair63.png", event = "jim-chairs:client:Use", item = 63 },
    },
    ["chair64"] = {
        label = "Striped Camping Chair", weight = 100, stack = false, close = true,
        client = { image = "chair64.png", event = "jim-chairs:client:Use", item = 64 },
    },
    ["chair65"] = {
        label = "Posh Lounger", weight = 100, stack = false, close = true,
        client = { image = "chair65.png", event = "jim-chairs:client:Use", item = 65 },
    },
    ["chair66"] = {
        label = "Yellow Wicker Chair", weight = 100, stack = false, close = true,
        client = { image = "chair66.png", event = "jim-chairs:client:Use", item = 66 },
    },
    ["chair67"] = {
        label = "White Metal Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair67.png", event = "jim-chairs:client:Use", item = 67 },
    },
    ["chair68"] = {
        label = "White Metal Dining Chair 2", weight = 100, stack = false, close = true,
        client = { image = "chair68.png", event = "jim-chairs:client:Use", item = 68 },
    },
    ["chair69"] = {
        label = "Dark Material Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair69.png", event = "jim-chairs:client:Use", item = 69 },
    },
    ["chair70"] = {
        label = "Dark Brown Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair70.png", event = "jim-chairs:client:Use", item = 70 },
    },
    ["chair71"] = {
        label = "Brown Lounger", weight = 100, stack = false, close = true,
        client = { image = "chair71.png", event = "jim-chairs:client:Use", item = 71 },
    },
    ["chair72"] = {
        label = "Grey Sun Lounger", weight = 100, stack = false, close = true,
        client = { image = "chair72.png", event = "jim-chairs:client:Use", item = 72 },
    },
    ["chair73"] = {
        label = "Dark Brown Wood Chair", weight = 100, stack = false, close = true,
        client = { image = "chair73.png", event = "jim-chairs:client:Use", item = 73 },
    },
    ["chair74"] = {
        label = "Yellow Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair74.png", event = "jim-chairs:client:Use", item = 74 },
    },
    ["chair75"] = {
        label = "Oak Chair", weight = 100, stack = false, close = true,
        client = { image = "chair75.png", event = "jim-chairs:client:Use", item = 75 },
    },
    ["chair76"] = {
        label = "Black Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair76.png", event = "jim-chairs:client:Use", item = 76 },
    },
    ["chair77"] = {
        label = "Yellow Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair77.png", event = "jim-chairs:client:Use", item = 77 },
    },
    ["chair78"] = {
        label = "Wine Red Chair", weight = 100, stack = false, close = true,
        client = { image = "chair78.png", event = "jim-chairs:client:Use", item = 78 },
    },
    ["chair79"] = {
        label = "Black Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair79.png", event = "jim-chairs:client:Use", item = 79 },
    },
    ["chair80"] = {
        label = "Orange Louncher", weight = 100, stack = false, close = true,
        client = { image = "chair80.png", event = "jim-chairs:client:Use", item = 80 },
    },
    ["chair81"] = {
        label = "Blue Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair81.png", event = "jim-chairs:client:Use", item = 81 },
    },
    ["chair82"] = {
        label = "Small Black Stool", weight = 100, stack = false, close = true,
        client = { image = "chair82.png", event = "jim-chairs:client:Use", item = 82 },
    },
    ["chair83"] = {
        label = "Orange Couch", weight = 100, stack = false, close = true,
        client = { image = "chair83.png", event = "jim-chairs:client:Use", item = 83 },
    },
    ["chair84"] = {
        label = "Orange Deco Couch", weight = 100, stack = false, close = true,
        client = { image = "chair84.png", event = "jim-chairs:client:Use", item = 84 },
    },
    ["chair85"] = {
        label = "Wine Red Couch", weight = 100, stack = false, close = true,
        client = { image = "chair85.png", event = "jim-chairs:client:Use", item = 85 },
    },
    ["chair86"] = {
        label = "Red Couch", weight = 100, stack = false, close = true,
        client = { image = "chair86.png", event = "jim-chairs:client:Use", item = 86 },
    },
    ["chair87"] = {
        label = "White Couch", weight = 100, stack = false, close = true,
        client = { image = "chair87.png", event = "jim-chairs:client:Use", item = 87 },
    },
    ["chair88"] = {
        label = "Black Deco Couch", weight = 100, stack = false, close = true,
        client = { image = "chair88.png", event = "jim-chairs:client:Use", item = 88 },
    },
    ["chair89"] = {
        label = "Light Blue Couch", weight = 100, stack = false, close = true,
        client = { image = "chair89.png", event = "jim-chairs:client:Use", item = 89 },
    },
    ["chair90"] = {
        label = "White Couch", weight = 100, stack = false, close = true,
        client = { image = "chair90.png", event = "jim-chairs:client:Use", item = 90 },
    },
    ["chair91"] = {
        label = "White Leather Chair", weight = 100, stack = false, close = true,
        client = { image = "chair91.png", event = "jim-chairs:client:Use", item = 91 },
    },
    ["chair92"] = {
        label = "Brown Couch", weight = 100, stack = false, close = true,
        client = { image = "chair92.png", event = "jim-chairs:client:Use", item = 92 },
    },
    ["chair93"] = {
        label = "Brown Luxury Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair93.png", event = "jim-chairs:client:Use", item = 93 },
    },
    ["chair94"] = {
        label = "Grey Luxury Office Chair", weight = 100, stack = false, close = true,
        client = { image = "chair94.png", event = "jim-chairs:client:Use", item = 94 },
    },
    ["chair95"] = {
        label = "Dark Brown Couch", weight = 100, stack = false, close = true,
        client = { image = "chair95.png", event = "jim-chairs:client:Use", item = 95 },
    },
    ["chair96"] = {
        label = "Light Brown Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair96.png", event = "jim-chairs:client:Use", item = 96 },
    },
    ["chair97"] = {
        label = "Plastic Lawn Chair 2", weight = 100, stack = false, close = true,
        client = { image = "chair97.png", event = "jim-chairs:client:Use", item = 97 },
    },
    ["chair98"] = {
        label = "Red/Green Gamer Chair", weight = 100, stack = false, close = true,
        client = { image = "chair98.png", event = "jim-chairs:client:Use", item = 98 },
    },
    ["chair99"] = {
        label = "Gamer Chair", weight = 100, stack = false, close = true,
        client = { image = "chair99.png", event = "jim-chairs:client:Use", item = 99 },
    },
    ["chair100"] = {
        label = "Blue Metal Chair", weight = 100, stack = false, close = true,
        client = { image = "chair100.png", event = "jim-chairs:client:Use", item = 100 },
    },
    ["chair101"] = {
        label = "Black Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair101.png", event = "jim-chairs:client:Use", item = 101 },
    },
    ["chair102"] = {
        label = "Red Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair102.png", event = "jim-chairs:client:Use", item = 102 },
    },
    ["chair103"] = {
        label = "Green Metal Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair103.png", event = "jim-chairs:client:Use", item = 103 },
    },
    ["chair104"] = {
        label = "Blue Metal Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair104.png", event = "jim-chairs:client:Use", item = 104 },
    },
    ["chair105"] = {
        label = "Light Material Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair105.png", event = "jim-chairs:client:Use", item = 105 },
    },
    ["chair106"] = {
        label = "Purple Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair106.png", event = "jim-chairs:client:Use", item = 106 },
    },
    ["chair107"] = {
        label = "Red Deco Chair", weight = 100, stack = false, close = true,
        client = { image = "chair107.png", event = "jim-chairs:client:Use", item = 107 },
    },
    ["chair108"] = {
        label = "White Casino Chair", weight = 100, stack = false, close = true,
        client = { image = "chair108.png", event = "jim-chairs:client:Use", item = 108 },
    },
    ["chair109"] = {
        label = "Cream Wicker Chair", weight = 100, stack = false, close = true,
        client = { image = "chair109.png", event = "jim-chairs:client:Use", item = 109 },
    },
    ["chair110"] = {
        label = "Black Metal Dining Chair", weight = 100, stack = false, close = true,
        client = { image = "chair110.png", event = "jim-chairs:client:Use", item = 110 },
    },
```