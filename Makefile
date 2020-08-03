COPY_FILES = blockly_compressed.js blocks_compressed.js javascript_compressed.js
INDEX = index.html

all: $(COPY_FILES) $(INDEX)

clean:
	rm $(INDEX) $(COPY_FILES)

$(COPY_FILES):
	cp blockly/$@ $@

$(INDEX):
	pandoc -s -c pandoc.css -r commonmark README.md --metadata pagetitle="Introduction to Parsly" -o $@
