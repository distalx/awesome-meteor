install:
	@npm install
	@bower install

clean:
	@rm -rf build public

build: clean
	@gulp build

serve: build
	@gulp

publish: build
	@ghp-import -p public

.PHONY: install clean build serve publish