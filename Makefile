# If you change something here, be sure to change it in package.json's scripts as well

dev:
	./node_modules/.bin/coffee -w -o lib/ -c src/

debug:
	cd test; node --debug-brk ../bin/docpad run

test:
	make clean
	node ./node_modules/mocha/bin/mocha

install:
	coffee ./bin/docpad install

clean:
	rm -Rf node_modules/ npm-debug.log
	npm install

publish:
	make clean
	npm publish

.PHONY: dev test install clean publish