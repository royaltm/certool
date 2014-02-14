prefix=/usr/local
destdir=${prefix}/bin
install:
	install -m 755 certool "${destdir}"

.PHONY: install
