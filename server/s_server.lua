if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports.es_extended:getSharedObject()
end


--pdm
RegisterServerEvent('ef-jobreceipt:Server:UploadPDM')
AddEventHandler('ef-jobreceipt:Server:UploadPDM', function(sname, bname, bcitizenid, vnumber, sellingprice, finance, financedownpay)
    PDMWebhook (
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

-- --edm
-- RegisterServerEvent('ef-jobreceipt:Server:UploadPDM')
-- AddEventHandler('ef-jobreceipt:Server:UploadPDM', function(sname, bname, bcitizenid, vnumber, sellingprice, finance, financedownpay)
--     PDMWebhook (
--         "**Seller Name:** " .. sname ..
--         "\n" ..
--         "\n" ..
--         "**Buyer Name:** " .. bname ..
--         "\n" ..
--         "\n" ..
--         "**Buyer Citizen ID:** " .. bcitizenid ..
--         "\n" ..
--         "\n" ..
--         "**Vehicle Number:** " .. vnumber ..
--         "\n" ..
--         "\n" ..
--         "**Selling Price:** " .. sellingprice ..
--         "\n" ..
--         "\n" ..
--         "**Have the Buyer Finance The Vehicle ?** " .. finance ..
--         "\n" ..
--         "\n" ..
--         "**Finance Down Payment** " .. financedownpay 
--         )
-- end)

--mechanic
RegisterServerEvent('ef-jobreceipt:Server:UploadMechanic')
AddEventHandler('ef-jobreceipt:Server:UploadMechanic', function(cname, vname, cid, upgradeoption, upcost, repairoption, rcost, customoption, custcost, mname)
    MechanicWebhook (
        "```Customer Name: " .. cname ..
        "\n" ..
        "\n" ..
        "Vehicle Name: " .. vname ..
        "\n" ..
        "\n" ..
        "Customer Citizen ID: " .. cid ..
        "\n" ..
        "\n" ..
        "Have the Customer Upgrade Their Vehicle ? " .. upgradeoption ..
        "\n" ..
        "\n" ..
        "Vehicle Upgrade Cost: " .. upcost ..
        "\n" ..
        "\n" ..
        "Have the Customer Repair Their Vehicle ? " .. repairoption ..
        "\n" ..
        "\n" ..
        "Vehicle Repair Cost: " .. rcost ..
        "\n" ..
        "\n" ..
        "Have the Customer Customize Their Vehicle ? " .. customoption ..
        "\n" ..
        "\n" ..
        "Vehicle Customize Cost: " .. custcost .. 
        "\n" ..
        "\n" ..
        "Mechainc Name: " .. mname ..
        "\n```"
        )
end)






















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


--pdm webhook
function PDMWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "PDM | Sales Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-jobreceipt',
            },
        }
    }
    PerformHttpRequest(Config.PDMWebhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - PDM Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end

---MECHANIC

function MechanicWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "EF-AntiCheat - PDM | Seller",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-jobreceipt',
            },
        }
    }
    PerformHttpRequest(Config.MechanicWebhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end



--- useable item


-- QBCore.Functions.CreateUseableItem('tablet' , function(source, item)
--         TriggerClientEvent('ef-jobreceipt:Client:OpenFormPDM', source)
-- end)