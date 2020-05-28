resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua',
	'config.lua'
}

client_scripts {
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	'config.lua',
	'client.lua'
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/script.js',
	'ui/css/style.css',
	'ui/images/bat.png',
	'ui/images/battelaxe.png',
	'ui/images/bottle.png',
	'ui/images/foldekniv.jpg',
	'ui/images/golf.png',
	'ui/images/kniv.png',
	'ui/images/koben.png',
	'ui/images/machete.png',
	'ui/images/wrench.png',
	'ui/libraries/axios.min.js',
	'ui/libraries/vue.min.js',
	'ui/libraries/vuetify.css',
	'ui/libraries/vuetify.js',
}