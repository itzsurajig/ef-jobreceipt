if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports.es_extended:getSharedObject()
end

--start
--pdm
RegisterNetEvent('ef-jobreceipt:Client:OpenFormPDM')
AddEventHandler('ef-jobreceipt:Client:OpenFormPDM', function(form)
    local playerPed = PlayerPedId()
            local input = lib.inputDialog("PDM", {
                { type = 'input',        label = 'Seller Name',            description = 'Write your name here',               required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Name',             description = 'Write buyer name here',                required = true, icon = 'fa-user' },
                { type = 'input',        label = 'Buyer Citizen ID',          description = 'Write buyer Citizen ID here',             required = true, icon = 'fa-id-card' },
                { type = 'input',        label = 'Vehicle Number',            description = 'Write vehicle number plate here',     required = true, icon = 'fas fa-car' },
                { type = 'number',        label = 'Selling Price', description = 'Write vehicle selling price here',        required = true, icon = 'fas fa-dollar-sign' },
                { type = 'input',        label = 'Have the Buyer Finance The Vehicle ?',    description = '( Yes or No )', required = true, icon = 'fa-question-circle' },
                { type = 'number',        label = 'Finance Down Payment',            description = 'Write the down payment here',     required = true, icon = 'fas fa-dollar-sign' },
            })
        if input then
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
            lib.progressCircle({
                duration = Config.Time,
                label = "Writing...",
                useWhileDead = false,
                position = "bottom",
                canCancel = true,
                disable = {
                    car = true,
                },
            })
            if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
            -- if Config.SendEmail then Email(form) end
            TriggerServerEvent('ef-jobreceipt:Server:UploadPDM', input[1], input[2], input[3], input[4], input[5], input[6], input[7])
            QBCore.Functions.Notify('Uploading Done', 'success')
                end
            end)



---mechanic
RegisterNetEvent('ef-jobreceipt:Client:OpenFormMechanic')
AddEventHandler('ef-jobreceipt:Client:OpenFormMechanic', function(form)
    local playerPed = PlayerPedId()
            local dialog = exports["qb-input"]:ShowInput({
                header = "Mechanic",
                submitText = "UPLOAD",
                inputs = {
                    { text = "Customer Name",                               name = "cname",          type = "text",  isRequired = true,  },
                    { text = "Vehicle Name",                                name = "vname",           type = "text",  isRequired = true,  },
                    { text = "Customer Citizen ID",                               name = "cid",      type = "text",  isRequired = true,  },
                    { text = "Have the Customer Upgrade Their Vehicle ?",                             name = "upgradeoption",        type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
                    { text = "Vehicle Upgrade Cost",                               name = "upcost",      type = "number",  isRequired = true,  },
                    { text = "Have the Customer Repair Their Vehicle ?",                               name = "repairoption",      type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
                    { text = "Vehicle Repair Cost",      name = "rcost",       type = "number", isRequired = true,  },
                    { text = "Have the Customer Customize Their Vehicle ?",                               name = "customoption",      type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
                    { text = "Vehicle Customize Cost",                               name = "custcost",      type = "number",  isRequired = true,  },
                    { text = "Mechainc Name",                               name = "mname",      type = "text",  isRequired = true,  },
                },
            })
            if dialog then
                if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
                QBCore.Functions.Progressbar("pdmupload", "Uploading to server...", Config.Time, false, true, {
                    disableMovement = true, 
                    disableCarMovement = true, 
                    disableMouse = false, 
                    disableCombat = true, 
                }, {}, {}, {}, function()  
                    if Config.SendEmail then
                        Email(form)
                    end
                    if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
                    if Config.SendEmail then Email(form) end
                    TriggerServerEvent('ef-jobreceipt:Server:UploadMechanic', dialog.cname, dialog.vname, dialog.cid, dialog.upgradeoption, dialog.upcost, dialog.repairoption, dialog.rcost, dialog.customoption, dialog.custcost, dialog.mname)
                end)
            end
        end)

        

