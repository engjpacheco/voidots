PROG=ytfzf
PREFIX=/usr/local
BINDIR=${PREFIX}/bin
DOCDIR=${PREFIX}/share/doc/ytfzf
MANDIR=${PREFIX}/share/man
LICENSEDIR=${PREFIX}/share/licenses/ytfzf

doc:
	mkdir -p ${DESTDIR}${MANDIR}/man1
	mkdir -p ${DESTDIR}${MANDIR}/man5
	mkdir -p ${DESTDIR}${DOCDIR}
	mkdir -p ${DESTDIR}${LICENSEDIR}
	install -Dm644 docs/man/ytfzf.1 ${DESTDIR}${MANDIR}/man1
	install -Dm644 docs/man/ytfzf.5 ${DESTDIR}${MANDIR}/man5
	install -Dm644 docs/conf.sh ${DESTDIR}${DOCDIR}
	install -Dm644 LICENSE ${DESTDIR}${LICENSEDIR}

install:
	chmod 755 ${PROG}
	mkdir -p ${DESTDIR}${BINDIR}
	install ${PROG} ${DESTDIR}${BINDIR}/${PROG}

uninstall:
	rm -f ${DESTDIR}${MANDIR}/man1/ytfzf.1
	rm -f ${DESTDIR}${MANDIR}/man5/ytfzf.5
	rm -rf ${DESTDIR}${DOCDIR}
	rm -rf ${DESTDIR}${LICENSEDIR}
	rm -f ${DESTDIR}${BINDIR}/${PROG}

#legacy install locations on linux
uninstall-old:
	rm -f /usr/bin/ytfzf
	rm -f /usr/share/man/man1/ytfzf.1*
	rm -f /usr/share/man/man5/ytfzf.5*

.PHONY: install uninstall doc uninstall-old
