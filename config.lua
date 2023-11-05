Config = {}
Config.Corename = 'qb-core' --core name if your change the folder name of qb-core [Only qb framework supported]
Config.Emotes = "rpemotes" -- "rpemotes" or "dpemotes"
Config.debug = false  --- true for developer mode
Config.target = 'qb-target'   --- qb-target  or ox_target

---- Locations for Receipts
--- pdm
Config.PDM = {
    job = 'cardealer',   --- job name
    Location = vector3(-56.86, -1096.98, 26.42),
    heading = 219.08,
    minZ = 24.332054138184,
    maxZ = 30.332054138184,
    Wehbhook = '' --- webhook here
}
--- edm
Config.EDM = {
    job = 'cardealer',  --- job name
    Location = vector3(-30.9287, -1112.3273, 26.4223),
    heading = 245.5694,
    minZ = 24.332054138184,
    maxZ = 30.332054138184,
    Wehbhook = '' --- webhook here
}
--- mechanic
Config.Mechanic = {
    job = 'mechanic',   --- job name
    Location = vector3(-343.8236, -140.0073, 39.0097),
    heading = 162.2687,
    minZ = 37.021053314209,
    maxZ = 43.021053314209,
    Wehbhook = '' --- webhook here
}