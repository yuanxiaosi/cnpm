CNPMJS = ./node_modules/.bin/cnpmjs.org

ADMINS = 'admin'
SCOPES = '@maizuo-fe'
DATA_DIR = ${shell pwd}/data

install:
	@yarn install

start: 
	@cp ./config/config.js ./node_modules/cnpmjs.org/config/index.js
	@${CNPMJS} start --admins=${ADMINS} --scopes=${SCOPES} --dataDir=${DATA_DIR}

stop:
	${CNPMJS} stop --dataDir=${DATA_DIR}