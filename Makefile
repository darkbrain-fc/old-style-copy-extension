VERSION=`jq -r '.version' chrome/manifest.json`
FILES_WITHOUT_IMAGES=./*.js README.md LICENSE
IMAGES=./images/*.png
FILES=$(FILES_WITHOUT_IMAGES) $(IMAGES)
MANIFEST_CHROME=./chrome/*.json
MANIFEST_FIREFOX=./firefox/*.json

all: chrome_extension old-style-firefox.zip

chrome_extension: $(FILES) $(MANIFEST_CHROME)
	mkdir chrome_extension
	cp $(FILES_WITHOUT_IMAGES) chrome_extension
	cp -r images chrome_extension
	cp $(MANIFEST_CHROME) chrome_extension

old-style-firefox.zip: $(FILES) $(MANIFEST_FIREFOX)
	zip -ov9r ./old-style-firefox-$(VERSION).zip $(FILES) $(MANIFEST_FIREFOX)
	zip -ujov9r ./old-style-firefox-$(VERSION).zip $(MANIFEST_FIREFOX)

clean:
	rm old-style-firefox*.zip
	rm -rf chrome_extension
