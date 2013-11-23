usage :
	@echo ''
	@echo 'Core tasks                   : Description'
	@echo '--------------------         : -----------'
	@echo 'make build                   : Build web and cordova app'
	@echo 'make emulate                 : Start an emulator'
	@echo 'make server                  : Start a web server'
	@echo 'make run                     : Send app to a connected device'
	@echo ''

setup :
	rm -rf www
	mkdir www
	@cd web; npm install; bower install; grunt build --force;
	rm -rf merges platforms plugins
	mkdir merges platforms plugins
	cordova platform add android

build :
	@cd web; grunt build;
	cordova build android

emulate :
	cordova emulate android

run :
	cordova run android

cserver :
	cordova serve android

wserver :
	@cd web; grunt server;
