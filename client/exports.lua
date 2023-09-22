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
			job = "police",
		},
	},
	distance = 2.5
})
