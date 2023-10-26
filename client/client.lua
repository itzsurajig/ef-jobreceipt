QBCore = exports[Config.Corename]:GetCoreObject()

--start
--pdm
RegisterNetEvent('ef-jobreceipt:Client:ReceiptPDM')
AddEventHandler('ef-jobreceipt:Client:ReceiptPDM', function(suraj)
    local playerPed = PlayerPedId()
            local input = lib.inputDialog("PDM", {
                { type = 'input',        label = 'Seller Name',  description = 'Write your name here',               required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Name',  description = 'Write buyer name here',                required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Citizen ID',  description = 'Write buyer Citizen ID here',             required = true, icon = 'fa-id-card' },
                { type = 'input',        label = 'Vehicle Number',  description = 'Write vehicle number plate here',     required = true, icon = 'fas fa-car' },
                { type = 'number',        label = 'Selling Price', description = 'Write vehicle selling price here',        required = true, icon = 'fas fa-dollar-sign' },
                { type = 'input',        label = 'Have the Buyer Finance The Vehicle ?',  description = '( Yes or No )', required = true, icon = 'fa-question-circle' },
                { type = 'number',        label = 'Finance Down Payment',  description = 'Write the down payment here',     required = false, icon = 'fas fa-dollar-sign' },
            })
        if input then
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"tablet2"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("tablet2") else print("Missing or write wrong on: Config.Emotes") end
            lib.progressCircle({
                duration = 5000,
                label = "Uploading on server...",
                useWhileDead = false,
                position = "bottom",
                canCancel = true,
                disable = {
                    car = true,
                },
            })
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
            TriggerServerEvent('ef-jobreceipt:Server:UploadPDM', input[1], input[2], input[3], input[4], input[5], input[6], input[7])
            QBCore.Functions.Notify('Uploading Done', 'success')
            end
end)

---mechanic
RegisterNetEvent('ef-jobreceipt:Client:ReceiptMechanic')
AddEventHandler('ef-jobreceipt:Client:ReceiptMechanic', function(suraj)
    local playerPed = PlayerPedId()
    local input = lib.inputDialog("Mechanic", {
        { type = 'input',        label = 'Customer Name',            description = 'Write customer name here',               required = true, icon = 'fa-user' },
        { type = 'input',        label = 'Vehicle Name',             description = 'Write vehicle name here',                required = true, icon = 'fa-user' },
        { type = 'input',        label = 'Customer ID',          description = 'Write customer ID here',             required = true, icon = 'fa-id-card' },
        { type = 'number',        label = 'Vehicle Upgrade Cost', description = 'Write vehicle upgrade price here',        required = false, icon = 'fas fa-dollar-sign' },
        { type = 'number',        label = 'Vehicle Repair Cost',            description = 'Write repair cost here',     required = false, icon = 'fas fa-dollar-sign' },
        { type = 'number',        label = 'Vehicle Customization Cost',            description = 'Write customization cost here',     required = false, icon = 'fas fa-dollar-sign' },
        { type = 'input',        label = 'Mechainc Name',            description = 'Write your name here',     required = true, icon = 'fa-user' },
    })
if input then
    if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"tablet2"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("tablet2") else print("Missing or write wrong on: Config.Emotes") end
    lib.progressCircle({
        duration = 5000,
        label = "Uploading on server...",
        useWhileDead = false,
        position = "bottom",
        canCancel = true,
        disable = {
            car = true,
        },
    })
    if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
    TriggerServerEvent('ef-jobreceipt:Server:UploadMechanic', input[1], input[2], input[3], input[4], input[5], input[6], input[7])
    QBCore.Functions.Notify('Uploading Done', 'success')
    end
end)


--EDM
RegisterNetEvent('ef-jobreceipt:Client:ReceiptEDM')
AddEventHandler('ef-jobreceipt:Client:ReceiptEDM', function(suraj)
    local playerPed = PlayerPedId()
            local input = lib.inputDialog("EDM", {
                { type = 'input',        label = 'Seller Name',            description = 'Write your name here',               required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Name',             description = 'Write buyer name here',                required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Citizen ID',          description = 'Write buyer Citizen ID here',             required = true, icon = 'fa-id-card' },
                { type = 'input',        label = 'Vehicle Number',            description = 'Write vehicle number plate here',     required = true, icon = 'fas fa-car' },
                { type = 'number',        label = 'Selling Price', description = 'Write vehicle selling price here',        required = true, icon = 'fas fa-dollar-sign' },
                { type = 'input',        label = 'Have the Buyer Finance The Vehicle ?',    description = '( Yes or No )', required = true, icon = 'fa-question-circle' },
                { type = 'number',        label = 'Finance Down Payment',            description = 'Write the down payment here',     required = false, icon = 'fas fa-dollar-sign' },
            })
        if input then
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"tablet2"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("tablet2") else print("Missing or write wrong on: Config.Emotes") end
            lib.progressCircle({
                duration = 5000,
                label = "Uploading on server...",
                useWhileDead = false,
                position = "bottom",
                canCancel = true,
                disable = {
                    car = true,
                },
            })
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
            TriggerServerEvent('ef-jobreceipt:Server:UploadEDM', input[1], input[2], input[3], input[4], input[5], input[6], input[7])
            QBCore.Functions.Notify('Uploading Done', 'success')
            end
end)

print("^2cfx.reMonitor ^2EF^7-^2JobReceipt ^2Script Made By- ^1BlasterSuraj^7 ^2 ^1https://discord.gg/WbDp5GQ45t^1")
