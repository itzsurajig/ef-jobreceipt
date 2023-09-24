fx_version 'cerulean'
author 'BlasterSuraj'
Description 'ef-jobreceipt'
game 'gta5'
lua54 'yes'

shared_scripts {
    "@ox_lib/init.lua",
    "config.lua",
}


server_script {
    "server/**.lua",
}


client_script {
    "client/**.lua",
}


escrow_ignore {
    'config.lua',
}