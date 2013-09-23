TOPDIR=..
BINDIR=$(TOPDIR)\$(BINDIR_NAME)
FREEGLUT_PATH=$(TOPDIR)\prebuilt\freeglut

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
	$(RM) $(OBJS) $(TARGET) $(TARGET).* core
