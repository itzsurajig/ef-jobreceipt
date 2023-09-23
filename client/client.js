if (Config.Framework === "qb") {
    QBCore = exports["qb-core"].GetCoreObject();
} else if (Config.Framework === "esx") {
    ESX = exports.es_extended.getSharedObject();
}

//start
//pdm
RegisterNetEvent('ef-jobreceipt:Client:OpenFormPDM');
AddEventHandler('ef-jobreceipt:Client:OpenFormPDM', function(form) {
    var playerPed = PlayerPedId();
    var input = lib.inputDialog("PDM", [
        { type: 'input', label: 'Seller Name', description: 'Write your name here', required: true, icon: 'fa-user' },
        { type: 'input', label: 'Buyer Name', description: 'Write buyer name here', required: true, icon: 'fa-user' },
        { type: 'input', label: 'Buyer Citizen ID', description: 'Write buyer Citizen ID here', required: true, icon: 'fa-id-card' },
        { type: 'input', label: 'Vehicle Number', description: 'Write vehicle number plate here', required: true, icon: 'fas fa-car' },
        { type: 'number', label: 'Selling Price', description: 'Write vehicle selling price here', required: true, icon: 'fas fa-dollar-sign' },
        { type: 'input', label: 'Have the Buyer Finance The Vehicle ?', description: '( Yes or No )', required: true, icon: 'fa-question-circle' },
        { type: 'number', label: 'Finance Down Payment', description: 'Write finance down payment here', required: true, icon: 'fas fa-dollar-sign' }
    ]);
});