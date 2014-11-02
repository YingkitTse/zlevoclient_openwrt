TARGET = zlevoclient
BIN_DIR = /usr/bin/
INCLUDES = 
#LIBS = ~/toolchains/3.4.6-uclibc-0.9.28/lib/libpcap.a



C_SOURCES       = $(wildcard *.c)
C_OBJS = $(patsubst %.c, %.o, $(C_SOURCES))

# ------------  generate the names of the object files  ------------------------
OBJECTS         = $(addsuffix .o,$(BASENAMES))

# ------------  generate the names of the hidden prerequisite files  -----------
PREREQUISITES   = $(addprefix .,$(addsuffix .d,$(BASENAMES)))

# ------------  make the executable (the default goal)  ------------------------
%.o:%.c
	$(CC) -c $<$ $(CCFLAGS)

$(TARGET): $(CPP_OBJS) $(C_OBJS)
	$(CXX)$(LINKFLAGS) -o $(TARGET) $^ $(LIBS)

all:$(TARGET)