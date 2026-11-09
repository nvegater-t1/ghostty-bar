VERSION := $(shell cat VERSION)
APP     := build/GhosttyBar.app
BIN     := $(APP)/Contents/MacOS/GhosttyBar
DEST    := $(HOME)/Applications/GhosttyBar.app

.PHONY: build run demo install clean zip

build:
	./build.sh

run: build
	$(BIN)

demo: build
	$(BIN) --demo

install: build
	-pkill -x GhosttyBar
	mkdir -p $(HOME)/Applications
	rm -rf "$(DEST)"
	ditto $(APP) "$(DEST)"
	open "$(DEST)"
	@echo "Installed to $(DEST)"

zip: build
	mkdir -p dist
	rm -f dist/GhosttyBar-$(VERSION).zip
	ditto -c -k --keepParent $(APP) dist/GhosttyBar-$(VERSION).zip
	@echo "dist/GhosttyBar-$(VERSION).zip"

clean:
	rm -rf build dist
