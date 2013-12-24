usage :
	@echo ''
	@echo 'Core tasks                   : Description'
	@echo '--------------------         : -----------'
	@echo 'make setup                   : Clean and create everything needed to begin'
	@echo 'make build                   : Build grunt and cordova project'
	@echo 'make emulate                 : Start an android emulator'
	@echo 'make run                     : Send app to a connected device'
	@echo ''

setup :
	rm -rf www
	mkdir www
	@cd web; npm install; bower install; grunt build --force;
	rm -rf merges platforms plugins
	mkdir merges platforms plugins
	cordova platform add android

binstall :
	@cd web; bower install;

build :
	@cd web; grunt build --force;
	cordova build android

emulate :
	cordova emulate android

run :
	cordova run android

gbuild :
	@cd web; grunt build --force;

gserver :
	@cd web; grunt server;

cbuild :
	cordova build android

cserver :
	cordova serve android


