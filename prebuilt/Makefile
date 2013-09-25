DEPTH=..
include $(DEPTH)\Makefile.common

FREEGLUT_LIB_PATH=freeglut\bin\freeglut.dll

TARGET=$(BINDIR)\freeglut.dll

$(TARGET): $(BINDIR) $(FREEGLUT_LIB_PATH)
	$(CP) $(FREEGLUT_LIB_PATH) $(TARGET)

$(BINDIR):
	$(MKDIR) $(BINDIR)

clean:
	@for %%f in ($(TARGET)) do \
	if exist %%f $(RM) %%f
