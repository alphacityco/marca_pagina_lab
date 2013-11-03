usage :
	@echo ''
	@echo 'Core tasks                   : Description'
	@echo '--------------------         : -----------'
	@echo 'make build                   : Build web and cordova app'
	@echo 'make emulate                 : Start an emulator'
	@echo 'make server                  : Start a web server'
	@echo 'make run                     : Send app to a connected device'
	@echo ''

build :
	@cd web; grunt build;
	cordova build android

emulate :
	cordova emulate android

server :
	cordova serve android

run :
	cordova run android
