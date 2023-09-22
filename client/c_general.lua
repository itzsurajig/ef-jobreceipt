if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports.es_extended:getSharedObject()
end

RegisterNetEvent('ef-jobreceipt:Client:OpenFormPDM')
AddEventHandler('ef-jobreceipt:Client:OpenFormPDM', function(form)
    local playerPed = PlayerPedId()
    -- if form == "police" then
        -- if Config.Menus == "qb" then
            local dialog = exports["qb-input"]:ShowInput({
                header = " PDM",
                submitText = "UPLOAD",
                inputs = {
                    { text = "Seller Name",                               name = "sname",          type = "text",  isRequired = true,  },
                    { text = "Buyer Name",                                name = "bname",           type = "text",  isRequired = true,  },
                    { text = "Buyer Citizen ID",                               name = "bcitizenid",      type = "text",  isRequired = true,  },
                    { text = "Vehicle Number",                             name = "vnumber",        type = "text",  isRequired = true,  },
                    { text = "Selling Price",                               name = "sellingprice",      type = "number",  isRequired = true,  },
                    -- { text = "Vehicle Image",                               name = "vehicleimg",      type = "number",  isRequired = true,  },
                    { text = "Have the Buyer Finance The Vehicle ?",      name = "finance",       type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
                    { text = "Finance Down Payment",                               name = "financedownpay",      type = "number",  isRequired = true,  },
                    -- { text = "Have you ever worked an emergency job?",  name = "emergencyjob",  type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
                },
            })
            if dialog then
                if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
                QBCore.Functions.Progressbar("writingPoliceForm", "Uploading to server...", Config.Time, false, true, {
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
                    TriggerServerEvent('ef-jobreceipt:Server:ApplyPoliceForm', dialog.sname, dialog.bname, dialog.bcitizenid, dialog.vnumber, dialog.sellingprice, dialog.finance, dialog.financedownpay)
                end)
            end
        end)
    -- end)

            --mechanic
            
            -- local dialog = exports["qb-input"]:ShowInput({
            --     header = "Mechanic",
            --     submitText = "UPLOAD",
            --     inputs = {
            --         { text = "Customer Name",                               name = "cname",          type = "text",  isRequired = true,  },
            --         { text = "Vehicle Name",                                name = "vname",           type = "text",  isRequired = true,  },
            --         { text = "Customer Citizen ID",                               name = "cid",      type = "text",  isRequired = true,  },
            --         { text = "Have the Customer Upgrade Their Vehicle ?",                             name = "upgradeoption",        type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
            --         { text = "Vehicle Upgrade Cost",                               name = "upcost",      type = "text",  isRequired = true,  },
            --         { text = "Have the Customer Repair Their Vehicle ?",                               name = "repairoption",      type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
            --         { text = "Vehicle Repair Cost",      name = "rcost",       type = "text", isRequired = true,  },
            --         { text = "Have the Customer Customize Their Vehicle ?",                               name = "customoption",      type = "select",  options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
            --         { text = "Vehicle Customize Cost",                               name = "custcost",      type = "text",  isRequired = true,  },
            --         { text = "Mechainc Name",                               name = "mname",      type = "text",  isRequired = true,  },
            --     },
            -- })



        -- else form == "mechanic" then
        --     -- if Config.Menus == "qb" then
        --         local dialog = exports["qb-input"]:ShowInput({
        --             header = " PDM",
        --             submitText = "UPLOAD",
        --             inputs = {
        --                 { text = "Seller Name",                               name = "name",          type = "text",  isRequired = true,  },
        --                 { text = "Buyer Name",                                name = "age",           type = "text",  isRequired = true,  },
        --                 { text = "Buyer Citizen ID",                               name = "aboutyou",      type = "text",  isRequired = true,  },
        --                 { text = "Vehicle Number",                             name = "number",        type = "text",  isRequired = true,  },
        --                 { text = "Selling Price",                               name = "sellingprice",      type = "text",  isRequired = true,  },
        --                 { text = "Vehicle Image",                               name = "vehicleimg",      type = "text",  isRequired = true,  },
        --                 { text = "Have the Buyer Finance The Vehicle ?",      name = "finance",       type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
        --                 { text = "Finance Down Payment",                               name = "financedownpay",      type = "text",  isRequired = true,  },
        --                 -- { text = "Have you ever worked an emergency job?",  name = "emergencyjob",  type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
        --             },
        --         })
    
        --         if dialog then
        --             if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
        --             QBCore.Functions.Progressbar("writingPoliceForm", "Uploading to server...", Config.Time, false, true, {
        --                 disableMovement = true, 
        --                 disableCarMovement = true, 
        --                 disableMouse = false, 
        --                 disableCombat = true, 
        --             }, {}, {}, {}, function()  
        --                 if Config.SendEmail then
        --                     Email(form)
        --                 end
        --                 if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
        --                 if Config.SendEmail then Email(form) end
        --                 TriggerServerEvent('ef-jobreceipt:Server:ApplyPoliceForm', dialog.name, dialog.age, dialog.number, dialog.aboutyou, dialog.sellingprice, dialog.vehicleimg, dialog.finance, dialog.financedownpay)
        --             end)
        --         end





        -- elseif Config.Menus == "ox" then
        --     local input = lib.inputDialog("Police Form", {
        --         { type = 'input',        label = 'Your Name',            description = 'Write your name here',               required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Your Age',             description = 'Write your age here',                required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Your Number',          description = 'Write your number here',             required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'About You',            description = 'Write something about you here',     required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Have you ever worked with weapons?',        description = '( Yes or No )', required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Have you ever worked an emergency job?',    description = '( Yes or No )', required = true, icon = 'hashtag' },
        --     })
        --     if input then
        --         if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
        --         lib.progressCircle({
        --             duration = Config.Time,
        --             label = "Writing...",
        --             useWhileDead = false,
        --             position = "bottom",
        --             canCancel = true,
        --             disable = {
        --                 car = true,
        --             },
        --         })
        --         if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
        --         if Config.SendEmail then Email(form) end
        --         TriggerServerEvent('ef-jobreceipt:Server:ApplyPoliceForm', input[1], input[2], input[3], input[4], input[5], input[6])
        --     end
        -- end
    --elseif form == "ambulance" then
        -- if Config.Menus == "qb" then
            -- local dialog = exports["qb-input"]:ShowInput({
            --     header = "Ambulance Form",
            --     submitText = "Submit Form",
            --     inputs = {
            --         { text = "Your Name",                               name = "name",          type = "text",  isRequired = true,  },
            --         { text = "Your Age",                                name = "age",           type = "text",  isRequired = true,  },
            --         { text = "Your Number",                             name = "number",        type = "text",  isRequired = true,  },
            --         { text = "About You",                               name = "aboutyou",      type = "text",  isRequired = true,  },
            --         { text = "Have you ever worked with weapons?",      name = "weapons",       type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
            --         { text = "Have you ever worked an emergency job?",  name = "emergencyjob",  type = "select", options = {  { value = "yes", text = "Yes" }, { value = "no", text = "No" }, } },
            --     },
            -- })

            -- if dialog then
            --     if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
            --     QBCore.Functions.Progressbar("writingAmbulanceForm", "Writing...", Config.Time, false, true, {
            --         disableMovement = true, 
            --         disableCarMovement = true, 
            --         disableMouse = false, 
            --         disableCombat = true, 
            --     }, {}, {}, {}, function() 
            --         if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
            --         if Config.SendEmail then Email(form) end
            --         TriggerServerEvent('ef-jobreceipt:Server:ApplyAmbulanceForm', dialog.name, dialog.age, dialog.number, dialog.aboutyou, dialog.weapons, dialog.emergencyjob)
            --     end)
            -- end
        -- elseif Config.Menus == "ox" then
        --     local input = lib.inputDialog("Ambulance Form", {
        --         { type = 'input',        label = 'Your Name',            description = 'Write your name here',               required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Your Age',             description = 'Write your age here',                required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Your Number',          description = 'Write your number here',             required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'About You',            description = 'Write something about you here',     required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Have you ever worked with weapons?',        description = '( Yes or No )', required = true, icon = 'hashtag' },
        --         { type = 'input',        label = 'Have you ever worked an emergency job?',    description = '( Yes or No )', required = true, icon = 'hashtag' },
        --     })
        --     if input then
        --         if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {Config.Animation}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart(Config.Animation) else print("Missing or write wrong on: Config.Emotes") end
        --         lib.progressCircle({
        --             duration = Config.Time,
        --             label = "Writing...",
        --             useWhileDead = false,
        --             position = "bottom",
        --             canCancel = true,
        --             disable = {
        --                 car = true,
        --             },
        --         })
        --         if Config.Emotes == "dpemotes" then TriggerEvent('animations:client:EmoteCommandStart', {"c"}) elseif Config.Emotes == "rpemotes" then exports["rpemotes"]:EmoteCommandStart("c") else print("Missing or write wrong on: Config.Emotes") end
        --         if Config.SendEmail then Email(form) end
        --         TriggerServerEvent('ef-jobreceipt:Server:ApplyAmbulanceForm', input[1], input[2], input[3], input[4], input[5], input[6])
        --     end
        -- end