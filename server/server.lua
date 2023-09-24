QBCore = exports["qb-core"]:GetCoreObject()


--pdm
RegisterServerEvent('ef-jobreceipt:Server:UploadPDM')
AddEventHandler('ef-jobreceipt:Server:UploadPDM', function(sname, bname, bcitizenid, vnumber, sellingprice, finance, financedownpay)
    PDMWebhook (
        "```Seller Name: " .. sname ..
        "\n" ..
        "\n" ..
        "Buyer Name: " .. bname ..
        "\n" ..
        "\n" ..
        "Buyer Citizen ID: " .. bcitizenid ..
        "\n" ..
        "\n" ..
        "Vehicle Number: " .. vnumber ..
        "\n" ..
        "\n" ..
        "Selling Price: " .. sellingprice ..
        "\n" ..
        "\n" ..
        "Have the Buyer Finance The Vehicle ? " .. finance ..
        "\n" ..
        "\n" ..
        "Finance Down Payment " .. financedownpay ..
        "```\n"
        )
end)
--mechanic
RegisterServerEvent('ef-jobreceipt:Server:UploadMechanic')
AddEventHandler('ef-jobreceipt:Server:UploadMechanic', function(cname, vname, cid, upcost, rcost, custcost, mname)
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
        "Vehicle Upgrade Cost: " .. upcost ..
        "\n" ..
        "\n" ..
        "Vehicle Repair Cost: " .. rcost ..
        "\n" ..
        "\n" ..
        "Vehicle Customize Cost: " .. custcost .. 
        "\n" ..
        "\n" ..
        "Mechainc Name: " .. mname ..
        "\n```"
        )
end)
--EDM
RegisterServerEvent('ef-jobreceipt:Server:UploadEDM')
AddEventHandler('ef-jobreceipt:Server:UploadEDM', function(sname, bname, bcitizenid, vnumber, sellingprice, finance, financedownpay)
    EDMWebhook (
        "```Seller Name: " .. sname ..
        "\n" ..
        "\n" ..
        "Buyer Name: " .. bname ..
        "\n" ..
        "\n" ..
        "Buyer Citizen ID: " .. bcitizenid ..
        "\n" ..
        "\n" ..
        "Vehicle Number: " .. vnumber ..
        "\n" ..
        "\n" ..
        "Selling Price: " .. sellingprice ..
        "\n" ..
        "\n" ..
        "Have the Buyer Finance The Vehicle ? " .. finance ..
        "\n" ..
        "\n" ..
        "Finance Down Payment " .. financedownpay ..
        "```\n"
        )
end)


--pdm webhook
function PDMWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280,
            ["title"] = "PDM | Sales Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-jobreceipt | https://discord.gg/WbDp5GQ45t',
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
            ["color"] = 65280,
            ["title"] = "Mechanic | Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-jobreceipt | https://discord.gg/WbDp5GQ45t',
            },
        }
    }
    PerformHttpRequest(Config.MechanicWebhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - Mechanic Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end

--EDM webhook
function EDMWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280,
            ["title"] = "EDM | Sales Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1007717270241427516/1018449348633305108/Ef_productions.gif",
                ["text"] = 'ef-jobreceipt | https://discord.gg/WbDp5GQ45t',
            },
        }
    }
    PerformHttpRequest(Config.EDMWebhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'ef-jobreceipt - EDM Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end


