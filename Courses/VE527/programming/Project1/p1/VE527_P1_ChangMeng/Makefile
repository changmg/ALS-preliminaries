#definitions
DIR_INC = ./
DIR_SRC = ./
DIR_OBJ = ./
DIR_LIB = ./
SOURCE  := $(wildcard ${DIR_SRC}/*.c) $(wildcard ${DIR_SRC}/*.cpp)
OBJS    := $(patsubst ${DIR_SRC}/%.c,${DIR_OBJ}/%.o,$(patsubst ${DIR_SRC}/%.cpp,${DIR_OBJ}/%.o,$(SOURCE)))
TARGET  := main

#compiling parameters
CC      := g++
LIBS    :=
LDFLAGS :=
DEFINES := $(FLAG)
INCLUDE :=
CFLAGS  := -g -Wall -O3 $(DEFINES) $(INCLUDE)
CXXFLAGS:= $(CFLAGS)

#commands
.PHONY : all objs rebuild clean ctags
all : $(TARGET)

objs : $(OBJS)

rebuild: clean all

clean :
	rm -f $(TARGET)
	rm -f ${OBJS}
	rm -f tags

ctags :
	ctags -R

$(TARGET) : $(OBJS)
	$(CC) $(CXXFLAGS) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

${DIR_OBJ}/%.o:${DIR_SRC}/%.cpp
	$(CC) $(CXXFLAGS) -c $< -o $@
