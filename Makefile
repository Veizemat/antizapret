NAME = script.module.antizapret
GIT = git
GIT_VERSION = $(shell $(GIT) describe --tags --always)
VERSION = $(patsubst v%,%,$(GIT_VERSION))
ZIP_SUFFIX = zip
ZIP_FILE = $(NAME)-$(VERSION).$(ZIP_SUFFIX)

all: clean zip

bootstraper:
	mkdir -p $(NAME)
	sed s/\$$VERSION/0.0.1/g < addon.xml.tpl > $(NAME)/addon.xml
	cp fanart.jpg $(NAME)
	cp icon.png $(NAME)
	zip -9 -r $(NAME).zip $(NAME)
	rm -rf $(NAME)

addon.xml:
	sed s/\$$VERSION/$(VERSION)/g < addon.xml.tpl > $@

$(ZIP_FILE): addon.xml
	git archive --format zip --prefix $(NAME)/ --output $(ZIP_FILE) $(GIT_VERSION)
	mkdir -p $(NAME)/resources/bin
	ln -s `pwd`/addon.xml $(NAME)
	zip -9 -r -g $(ZIP_FILE) $(NAME)/addon.xml
	rm -rf $(NAME)

zipfiles: addon.xml
	for arch in $(ARCHS); do \
		$(MAKE) zip ARCHS=$$arch ZIP_SUFFIX=$$arch.zip; \
	done

zip: $(ZIP_FILE)

clean:
	rm -rf addon.xml
