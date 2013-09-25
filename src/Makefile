DEPTH=..
include $(DEPTH)\Makefile.common

FREEGLUT_PATH=$(DEPTH)\prebuilt\freeglut

INCLUDE=$(FREEGLUT_PATH)\include

CXX=g++

LDFLAGS=
LIBS=-L$(FREEGLUT_PATH)\lib -lfreeglut -lopengl32
CFLAGS=$(INC) -W -Wall -I$(INCLUDE)
CXXFLAGS=$(INC) -W -Wall -I$(INCLUDE)

SRCS=\
	main.cpp

OBJS=$(SRCS:.cpp=.o)

TARGET=test

$(TARGET): $(OBJS) $(BINDIR)
	$(CXX) -o $(BINDIR)\$@ $(OBJS) $(LIBS)

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $< -o $@

.c.o:
	$(CXX) -c $(CXXFLAGS) $< -o $@

$(BINDIR):
	$(MKDIR) $(BINDIR)

clean:
	@for %%f in ($(OBJS) $(TARGET) $(TARGET).* core) do \
	if exist %%f $(RM) %%f
