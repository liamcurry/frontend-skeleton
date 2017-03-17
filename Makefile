export PATH  := $(PWD)/node_modules/.bin:$(PATH)
export SHELL := /bin/bash
export NODE_PATH := build:$(NODE_PATH)

include env/$(ENV).sh

start: build
	concurrently \
		--kill-others \
		--names server,js,css,html \
		--prefix "[{name}]" \
		--prefix-colors red,blue,green,yellow \
		'make serve' \
		'make watch-js' \
		'make watch-css' \
		'make watch-html'

build: clean build-js build-css build-html

clean:
	rm -Rf build dist

build-dirs:
	mkdir -p build dist

build-html: build-dirs
	@echo "=== Building HTML... ==="
	pug -o build src/index.pug
	html-minifier -c html-minifier.json -o dist/index.html build/index.html
	@echo "=== Successfully built HTML! ==="

build-js: build-dirs
	@echo "=== Building JS... ==="
	elm-make --yes --warn src/elm/Main.elm --output build/elm.js
	eslint src/js
	babel --out-dir build/js src/js
	browserify --outfile build/bundle.js build/js/runner.js
	cp build/bundle.js dist/index.js
	@echo "=== Successfully built JS! ==="

build-css: build-dirs
	@echo "=== Building CSS... ==="
	elm-css --module Main --output build src/elm-css/Main.elm
	postcss -c postcss.json -o build/index.css build/elm.css
	cp build/index.css dist/index.css
	@echo "=== Successfully built CSS! ==="

build-gzip:
	@echo "=== Building Gzipped files... ==="
	zopfli -i 20 dist/*
	@echo "=== Successfully built Gzipped files! ==="

build-sw-cache:
	@echo "=== Building Service Worker cache... ==="
	cp build/js/service-worker-registration.js dist
	sw-precache --root=dist --static-file-globs='dist/!(service-worker).@(css|js|html)'
	@echo "=== Successfully built Service Worker cache! ==="

watch-css:
	nodemon -C -e elm,css,sh -w env -w src/elm-css --exec 'make build-css || exit 1'

watch-html:
	nodemon -C -e pug,sh -w env -w src --exec 'make build-html || exit 1'

watch-js:
	nodemon -C -e elm,js,sh -w env -w src/elm -w src/js --exec 'make build-js || exit 1'

serve:
	@echo "=== Serving client files... ==="
	browser-sync start --config=bs-config.js
