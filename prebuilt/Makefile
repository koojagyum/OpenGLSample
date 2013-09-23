TOPDIR=..
BINDIR=$(TOPDIR)\$(BINDIR_NAME)

FREEGLUT_LIB_PATH=freeglut\bin\freeglut.dll

TARGET=$(BINDIR)\freeglut.dll

$(TARGET): $(BINDIR) $(FREEGLUT_LIB_PATH)
	$(CP) $(FREEGLUT_LIB_PATH) $(TARGET)

$(BINDIR):
	mkdir $(BINDIR)

clean:
	$(RM) $(TARGET)
