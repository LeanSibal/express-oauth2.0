application:
	npm install
	if [ "$(ENV)" = "development" ] ; then \
		nodemon index.js ; \
	else \
		pm2 start index.js ; \
		pm2 logs ; \
	fi
