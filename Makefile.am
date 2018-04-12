
RELEASE=0.0
VERSION=0.0.0
LANG1=krl
BASENAME=apertium-$(LANG1)

TARGETS_COMMON =			\
	$(LANG1).automorf.hfst		\
	$(LANG1).autogen.hfst		\
	$(LANG1).rlx.bin

# This include defines goals for install-modes, .deps/.d, autobil.prefixes and .mode files:
@ap_include@

.deps/$(LANG1).gen.twol.hfst: $(BASENAME).$(LANG1).gen.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).morf.twol.hfst: $(BASENAME).$(LANG1).morf.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc .deps/.d
	hfst-lexc $< -o $@ --alignStrings --Werror

$(LANG1).autogen.hfst: .deps/$(LANG1).lexc.hfst
	hfst-fst2fst -f olw -o $@ -i $<

$(LANG1).automorf.hfst: .deps/$(LANG1).lexc.hfst .deps/$(LANG1).morf.twol.hfst
	hfst-compose-intersect .deps/$(LANG1).lexc.hfst .deps/$(LANG1).morf.twol.hfst  |\
		hfst-invert |\
 		hfst-fst2fst -f olw -o $@

$(LANG1).rlx.bin: $(BASENAME).$(LANG1).rlx $(CGCOMP)
	$(CGCOMP) $< $@

EXTRA_DIST=$(BASENAME).$(LANG1).lexc		\
		$(BASENAME).$(LANG1).acx	\
		$(BASENAME).$(LANG1).rlx	\
		modes.xml


apertium_krldir=$(prefix)/share/apertium/$(BASENAME)/
apertium_krl_srcdir=$(prefix)/share/apertium/$(BASENAME)/

apertium_krl_DATA=$(TARGETS_COMMON)

pkgconfigdir = $(prefix)/share/pkgconfig
pkgconfig_DATA = $(BASENAME).pc

noinst_DATA=modes/$(LANG1)-morph.mode

install-data-local: install-modes
	test -d $(DESTDIR)$(apertium_krl_srcdir) || mkdir -p $(DESTDIR)$(apertium_krl_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).lexc $(DESTDIR)$(apertium_krl_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).rlx $(DESTDIR)$(apertium_krl_srcdir)

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes

###############################################################################
## Test
###############################################################################

test: all
	echo "TODO test sentence" | apertium -d krl-morph | tee .test-mt
	@echo "TODO test analysis results" > .test-ref
	@diff .test-ref .test-mt
	@rm .test-ref .test-mt

