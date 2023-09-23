fx_version 'cerulean'
author 'm-Scripts | https://marcinhu.tebex.io/'
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
    "client/exports.js",
}

lua54 'yes'