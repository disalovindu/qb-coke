Config = {}

Config.Locale = 'en'

Config.Delays = {
	ProcessCoke = 1000 * 1
}

Config.Pricesell = 700

Config.MinPiecesWed = 1



Config.DrugDealerItems = {
	empty_weed_bag = 91
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. 



Config.GiveBlack = false -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	PickupCocaleaf = {coords = vector3(1066.76, 4240.57, 36.81), name = 'blip_PickupCocaleaf', color = 25, sprite = 496, radius = 30.0},
	ProcessCoke = {coords = vector3(1392.09, 3605.36, 38.94), name = 'blip_ProcessCoke', color = 25, sprite = 496, radius = 100.0},
	DrugDealer = {coords = vector3(-1666.39, -1084.57, 13.15), name = 'blip_DrugDealer', color = 6, sprite = 378, radius = 25.0},
}