Config = {}

Config.Framework = "qb" -- "qb" or "esx"
Config.Menus = "qb" -- "qb" or "ox" | If you use esx use Config.Menus = "ox"
Config.Emotes = "rpemotes" -- "rpemotes" or "dpemotes"
Config.Animation = "tablet2" -- Animation when you are writing the form
Config.SendEmail = false -- Send email to player?
Config.Phone = "qb-phone" -- qb-phone / qs-smartphone / gksphone / rodaphone / d-phone / renewed-phone / notify - if you dont use any phone
Config.Time = 5000 -- Time of progressbar when you are writing the form

Config.Locations = {
    [1] = {
        Location = vector3(-56.86, -1096.98, 26.42),
        Form = "police",
    },
    [2] = {
        Location = vector3(312.28, -592.73, 43.28),
        Form = "ambulance",
    },
    -- You can add more zones
    --[3] = {
    --    Location = vector3(312.28, -592.73, 43.28),
    --    Form = "mechanic",
    --},
}

Config.PDM = vector3(-56.86, -1096.98, 26.42)