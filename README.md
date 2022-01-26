# qb-coke
https://github.com/Predator7158

Join My Server
https://discord.gg/nbMazBXaVa

I used qb-weedpicking as the Base

qb-weedpicking Author - https://github.com/MrEvilGamer

#More Scripts Coming Soon#

**IMPORTANT**

**In Order To get Cocaine Bags you need to bring Empty Bags and you need to add them manually to a Store**

Step 1
Make sure you add the images that i gave to the inventory and open the shared.lua and add the text given to
qb-core/shared.lua

['cocaine_bag'] 				 = {['name'] = 'cocaine_bag', 			  	  	['label'] = 'Coke Bag', 				['weight'] = 900, 		['type'] = 'item', 		['image'] = 'cocaine_baggy.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	  ['combinable'] = nil,   ['description'] = 'You Know What This is??'},

['cocaine_leaf'] 				 = {['name'] = 'cocaine_leaf', 			  	  	['label'] = 'Coke Leaf', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocaineleaf.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	  ['combinable'] = nil,   ['description'] = 'Let\'s make some Coke'},

["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 				["label"] = "Empty Weed Bag", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "weed_baggy_empty.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "To get happy real fast."},

Step 2
Make sure to add these in qb-core/client/functions.lua
(And this after Drawtext3d) 

```lua
QBCore.Functions.Draw2DText = function(x, y, text, scale)
    SetTextFont(4)
    SetTextProportional(7)
    SetTextScale(scale, scale)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    SetTextCentre(true)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end
```

(This at the Bottom)

```lua
QBCore.Functions.SpawnObject = function(model, coords, cb)
    local model = (type(model) == 'number' and model or GetHashKey(model))

    Citizen.CreateThread(function()
        RequestModel(model)
        local obj = CreateObject(model, coords.x, coords.y, coords.z, true, false, true)
        SetModelAsNoLongerNeeded(model)

        if cb then
            cb(obj)
        end
    end)
end
```
```lua
QBCore.Functions.SpawnLocalObject = function(model, coords, cb)
    local model = (type(model) == 'number' and model or GetHashKey(model))

    Citizen.CreateThread(function()
        RequestModel(model)
        local obj = CreateObject(model, coords.x, coords.y, coords.z, false, false, true)
        SetModelAsNoLongerNeeded(model)

        if cb then
            cb(obj)
        end
    end)
end
```
```lua
QBCore.Functions.DeleteObject = function(object)
    SetEntityAsMissionEntity(object, false, true)
    DeleteObject(object)
end
```
