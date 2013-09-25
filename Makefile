DEPTH=.
include Makefile.common

DIRS=prebuilt src

all:
	@for %%d in ($(DIRS)) do \
	$(MAKE) -C %%d || exit $?

clean:
	@for %%d in ($(DIRS)) do \
	$(MAKE) -C %%d clean
	@if exist $(BINDIR) $(RMDIR) $(BINDIR)
