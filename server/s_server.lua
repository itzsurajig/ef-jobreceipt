if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports.es_extended:getSharedObject()
end

local pdmWebhook = "https://discord.com/api/webhooks/1133034827084480573/X7l5Xo2IYFgZLQBeUHidXznUeBnHGAClY4_X3gqi9CWVj__sda7ZauRKwKI65ZcIOXKP"
-- local AmbulanceWebhook = "https://discord.com/api/webhooks/1133034827084480573/X7l5Xo2IYFgZLQBeUHidXznUeBnHGAClY4_X3gqi9CWVj__sda7ZauRKwKI65ZcIOXKP"

RegisterServerEvent('ef-jobreceipt:Server:ApplyPoliceForm')
AddEventHandler('ef-jobreceipt:Server:ApplyPoliceForm', function(sname, bname, bcitizenid, vnumber, sellingprice, finance, financedownpay)
    PoliceFormWebhook (
        "**Seller Name:** " .. sname ..
        "\n" ..
        "\n" ..
        "**Buyer Name:** " .. bname ..
        "\n" ..
        "\n" ..
        "**Buyer Citizen ID:** " .. bcitizenid ..
        "\n" ..
        "\n" ..
        "**Vehicle Number:** " .. vnumber ..
        "\n" ..
        "\n" ..
        "**Selling Price:** " .. sellingprice ..
        "\n" ..
        "\n" ..
        "**Have the Buyer Finance The Vehicle ?** " .. finance ..
        "\n" ..
        "\n" ..
        "**Finance Down Payment** " .. financedownpay 
        )
end)


-- RegisterServerEvent('ef-jobreceipt:Server:ApplyPoliceForm')
-- AddEventHandler('ef-jobreceipt:Server:ApplyPoliceForm', function(cname, vname, cid, upgradeoption, upcost, repairoption, rcost, customoption, custcost, mname)
--     PoliceFormWebhook (
--         "**Customer Name:** " .. cname ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Name:** " .. vname ..
--         "\n" ..
--         "\n" ..
--         "**Customer Citizen ID:** " .. cid ..
--         "\n" ..
--         "\n" ..
--         "**Have the Customer Upgrade Their Vehicle ?** " .. upgradeoption ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Upgrade Cost:** " .. upcost ..
--         "\n" ..
--         "\n" ..
--         "**Have the Customer Repair Their Vehicle ?** " .. repairoption ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Repair Cost:** " .. rcost ..
--         "\n" ..
--         "\n" ..
--         "**Have the Customer Customize Their Vehicle ?** " .. customoption ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Customize Cost:** " .. custcost .. 
--         "\n" ..
--         "Mechainc Name: " .. mname 
--         )
-- end)






















-- RegisterServerEvent('ef-jobreceipt:Server:ApplyAmbulanceForm')
-- AddEventHandler('ef-jobreceipt:Server:ApplyAmbulanceForm', function(name, age, number, aboutyou, weapons, emergencyjob)
--     AmbulanceFormWebhook (
--         "**Seller Name:** " .. name ..
--         "\n" ..
--         "\n" ..
--         "**Buyer Name:** " .. age ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Number:** " .. number..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Details:** " .. aboutyou ..
--         "\n" ..
--         "\n" ..
--         "**Have you ever worked with weapons?** " .. weapons..
--         "\n" ..
--         "\n" ..
--         "**Have you ever worked an emergency job?** " .. emergencyjob 
--         )
-- end)

function PoliceFormWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "EF-AntiCheat - PDM | Seller",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-seller',
            },
        }
    }
    PerformHttpRequest(pdmWebhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end

-- function AmbulanceFormWebhook(message)
--     local embed = {}
--     embed = {
--         {
--             ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
--             ["title"] = "ef-jobreceipt - Ambulance | Logs",
--             ["description"] = "" .. message ..  "",
--             ["footer"] = {
--                 ["icon_url"] = "https://media.discordapp.net/attachments/1049749773185470537/1135266178688876595/avatar.png",
--                 ["text"] = 'ef-jobreceipt | Logs | Created By marcinhu',
--             },
--         }
--     }
--     PerformHttpRequest(AmbulanceWebhook, 
--     function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
-- end

