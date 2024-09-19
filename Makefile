CC ?= gcc
CFLAGS ?= -O2
LDFLAGS ?=

all: brcm_patchram_plus

brcm_patchram_plus: brcm_patchram_plus.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

install: brcm_patchram_plus
	install -d $(DESTDIR)/usr/bin
	install -m 0755 brcm_patchram_plus $(DESTDIR)/usr/bin/

clean:
	rm -f brcm_patchram_plus

.PHONY: all install clean

