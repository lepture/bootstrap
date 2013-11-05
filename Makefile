
build: components index.js bootstrap.css bootstrap-theme.css
	@component build

components: component.json
	@component install --dev

baseurl=https://raw.github.com/twbs/bootstrap/master/dist/
download:
	curl ${baseurl}js/bootstrap.js -o index.js
	curl ${baseurl}css/bootstrap.css -o bootstrap.css
	curl ${baseurl}css/bootstrap-theme.css -o bootstrap-theme.css
	python .modify.py

fontname='fonts/glyphicons-halflings-regular'
download-fonts:
	curl ${baseurl}${fontname}.eot -o ${fontname}.eot
	curl ${baseurl}${fontname}.svg -o ${fontname}.svg
	curl ${baseurl}${fontname}.ttf -o ${fontname}.ttf
	curl ${baseurl}${fontname}.woff -o ${fontname}.woff


clean:
	rm -fr build components

.PHONY: clean build
