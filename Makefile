
SUBDIRS = JavaScript gpg


DISTDIRS = $(SUBDIRS:%=dist-%)

.PHONY: subdirs $(SUBDIRS)
.PHONY: dist    $(DISTDIRS)

subdirs: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

dist: $(DISTDIRS)
$(DISTDIRS):
	$(MAKE) -C $(@:dist-%=%) dist
