PREFIX=$(prefix:/usr/local)
BINDIR=$(destdir:$PREFIX/bin)
install:
	install -m 755 certool "${BINDIR}"

.PHONY: install
