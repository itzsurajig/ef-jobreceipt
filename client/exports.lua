--- pdm
exports[Config.target]:AddBoxZone("pdm", Config.PDM.Location, 2.45, 2.35, {
	name = "pdm",
	heading = Config.PDM.heading,
	debugPoly = Config.debug,
    minZ = Config.PDM.minZ,
    maxZ = Config.PDM.maxZ,
}, {
	options = {
		{
            type = "client",
            event = 'ef-jobreceipt:Client:ReceiptPDM',
			icon = "fas fa-sign-in-alt",
			label = "Open",
			job = Config.PDM.job,
		},
	},
	distance = 2.5
})

--- mechanic
exports[Config.target]:AddBoxZone("mechanic", Config.Mechanic.Location, 2.45, 2.35, {
	name = "mechanic",
	heading = Config.Mechanic.heading,
	debugPoly = Config.debug,
    minZ = Config.Mechanic.minZ,
    maxZ = Config.Mechanic.maxZ,
}, {
	options = {
		{
            type = "client",
            event = 'ef-jobreceipt:Client:ReceiptMechanic',
			icon = "fas fa-sign-in-alt",
			label = "Open",
			job = Config.Mechanic.job,
		},
	},
	distance = 2.5
})

-- edm
exports[Config.target]:AddBoxZone("edm", Config.EDM.Location, 2.45, 2.35, {
	name = "edm",
	heading = Config.EDM.heading,
	debugPoly = Config.debug,
    minZ = Config.EDM.minZ,
    maxZ = Config.EDM.maxZ,
}, {
	options = {
		{
            type = "client",
            event = 'ef-jobreceipt:Client:ReceiptEDM',
			icon = "fas fa-sign-in-alt",
			label = "Open",
			job = Config.EDM.job,
		},
	},
	distance = 2.5
})
