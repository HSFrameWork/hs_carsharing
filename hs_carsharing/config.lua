Config = {


	badParkingDelete = false, -- Delete the vehicle if left outside zone
	penaltyOutsideZone = 500, -- Amount to pay if vehicle is left ouside zone (keep 0 if no penalty)
	damagePenalty = 200, -- The price paid every time the vehicle gets damaged
	damagePercentForPenalty = 10, -- From what percent of cars health removed you get the penalty (1% being ultra sensitive / 100% means you have to break whole car)

	vehiclePlateText = "SHARING", -- IMPORTANT: Change this to any text with less then 8 characters

	vehicleSpawnRate = 20, -- Seconds to wait in zone until vehicle spawns

	vehicleUnlockFee = 200.0, -- The price paid to unlock a vehicle
	vehicleUnlockKey = 'E',    -- The key used to unlock vehicle

	licenseRequired = 'dmv', -- Keep empty if license is not required or us registered license on ESX

	--Blip information https://docs.fivem.net/docs/game-references/blips/
	ZoneBlipDisplay = 326,
	ZoneBlipColor = 3, 
	ZoneBlipText = "Carsharing zone",

	Zones = {

		-- NEAR HOSPITAL
		{
			Center = vector3(412.53726196289,-634.42462158203,28.500051498413), -- Center of the zone
			Size = 30.0,        -- Size of the zone
			SpawnPoints = {     -- Spawn points must be inside the zone!

				{x = 416.18362426758, y = -638.61401367188, z = 28.128915786743, h =268.74053955078},
				{x = 409.45269775391, y = -646.74816894531, z = 28.127578735352, h =93.475700378418}

			}
		},
		-- BEACH
		{
			Center = vector3(-1634.5075683594,-899.46984863281,8.85614490509), -- Center of the zone
			Size = 50.0,        -- Size of the zone
			SpawnPoints = {     -- Spawn points must be inside the zone!

				{x = -1639.0328369141, y = -881.39599609375, z = 8.4397668838501, h =321.43865966797},
				{x = -1652.6749267578, y = -852.09912109375, z = 8.7309141159058, h =140.33207702637},
				{x = -1692.3482666016, y = -894.60388183594, z = 7.6242413520813, h =134.98020935059},
				{x = -1650.5130615234, y = -923.27569580078, z = 7.7504515647888, h =319.3600769043}

			}
		},
		-- AIRPORT
		{
			Center = vector3(-974.84185791016,-2702.7956542969,13.865562438), -- Center of the zone
			Size = 25.0,        -- Size of the zone
			SpawnPoints = {     -- Spawn points must be inside the zone!

				{x = -973.59503173828, y = -2710.7329101562, z = 13.230259895325, h =357.64004516602},
				{x = -979.67041015625, y = -2690.0146484375, z = 13.203612327576, h =147.91804504395},
				{x = -961.70318603516, y = -2700.0173339844, z = 13.204073905945, h =151.2600708007}

			}
		},
		-- SANDY SHORES
		{
			Center = vector3(1884.3709716797,3713.4831542969,32.941623687744), -- Center of the zone
			Size = 25.0,        -- Size of the zone
			SpawnPoints = {     -- Spawn points must be inside the zone!

				{x = 1888.1688232422, y = 3716.6706542969, z = 32.219223022461, h =119.38603210449},
				{x = 1893.3103027344, y = 3707.7192382812, z = 32.211994171143, h =120.35060119629}

			}
		},
		-- PALETO BAY
		{
			Center = vector3(-77.256011962891,6341.1606445312,31.6208152771), -- Center of the zone
			Size = 25.0,        -- Size of the zone
			SpawnPoints = {     -- Spawn points must be inside the zone!

				{x = -74.348342895508, y = 6338.6640625, z = 30.863321304321, h =224.5255126953},
				{x = -85.466934204102, y = 6338.6079101562, z = 30.863529205322, h =43.502769470215},
				{x = -81.75919342041, y = 6358.3881835938, z = 30.863328933716, h =222.91084289551}

			}
		}


	},

	Vehicles = {

		{
			Display = "Issi", -- Display name of vehicle (Ex. BMW X5 2019)
			Model   = "issi2", -- Model name of the car used to spawn vehicle
			Price   = 20.0,      -- Price per minute
		},
		{
			Display = "Asea", -- Display name of vehicle (Ex. BMW X5 2019)
			Model   = "asea", -- Model name of the car used to spawn vehicle
			Price   = 23.0,      -- Price per minute
		},
		{
			Display = "Baller", -- Display name of vehicle (Ex. BMW X5 2019)
			Model   = "baller2", -- Model name of the car used to spawn vehicle
			Price   = 30.0,      -- Price per minute
		}

	},


	Text = {

		['primaryColor'] = 	{r = 227, g = 9, b = 45, a = 255}, -- Use RGB color picker
		['secondaryColor'] = {r = 245, g = 10, b = 80, a = 255}, -- Use RGB color picker

		['serviceName']  = "Carsharing",
		['vehicleUnlocked'] = "Vehicle has been unlocked! ~b~Drive safely",
		['noMoneyOrLicense'] = "You dont have enough money or a valid license!",
		['paid'] = "You have paid ~b~{price} $~w~ for your ride!",
		['badParking'] = "Vehicle has been removed due to parking outside of a zone",
		['penaltyPaid'] = "You paid ~b~{penaltyPrice} $~w~ for parking the vehicle outside of a zone",
		['damagePenalty'] = "You paid ~b~{penaltyPrice} $~w~ for damaging the vehicle",
		['pricePerMinute'] = "1 Minute | ${price}",
		['vehicleInfo'] = "Vehicle: {info}",
		['unlockText'] = "To unlock press [ E ] for ${price}",
		['zoneInfo'] = "While you are within the zone vehicles will appear!",
		['zoneTitle'] = "Carsharing Zone"
	
	}

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

end
