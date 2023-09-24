fx_version 'cerulean'
author 'BlasterSuraj'
Description 'ef-jobreceipt'
game 'gta5'

shared_scripts {
    "@ox_lib/init.lua",
    "config/**",
}

server_script {
    "server/**.lua",
}

client_script {
    "client/**.lua",
}

lua54 'yes'


escrow_ignore {
    'config/*.lua',
}