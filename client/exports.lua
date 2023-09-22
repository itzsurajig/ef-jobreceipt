--- pdm

exports['qb-target']:AddBoxZone("pdm", Config.PDM, 1.45, 1.35, {
	name = "pdm",
	heading = 219.08,
	debugPoly = false,
    minZ = 24.332054138184,
    maxZ = 30.332054138184,
}, {
	options = {
		{
            type = "client",
            event = 'ef-jobreceipt:Client:OpenFormPDM',
			icon = "fas fa-sign-in-alt",
			label = "Open",
			job = "cardealer",
		},
	},
	distance = 2.5
})

--- mechanic

exports['qb-target']:AddBoxZone("mechanic", Config.Mechanic, 1.45, 1.35, {
	name = "mechanic",
	heading = 219.08,
	debugPoly = false,
    minZ = 36.932434082031,
    maxZ = 42.932434082031,
}, {
	options = {
		{
            type = "client",
            event = 'ef-jobreceipt:Client:OpenFormMechanic',
			icon = "fas fa-sign-in-alt",
			label = "Open",
			job = "mechanic",
		},
	},
	distance = 2.5
})
