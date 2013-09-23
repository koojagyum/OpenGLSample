DIRS=prebuilt src

export BINDIR_NAME=bin

BINDIR=$(BINDIR_NAME)

export MAKE=mingw32-make.exe
export CP=copy
export RM=del /q
export MKDIR=mkdir
export RMDIR=rmdir /s /q
export MOVE=move

all:
	@for %%d in ($(DIRS)) do \
	$(MAKE) -C %%d || exit $?

clean:
	@for %%d in ($(DIRS)) do \
	$(MAKE) -C %%d clean
	$(RMDIR) $(BINDIR)
