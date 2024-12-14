.ONESHELL:
.RECIPEPREFIX = >

SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=ranton

CXX=g++
CXXFLAGS=-std=c++23
CXXFLAGS+=-O2
CXXFLAGS+=-Wall
CXXFLAGS+=-Werror
CXXFLAGS+=-Wextra
CXXFLAGS+=-Wpedantic
CXXFLAGS+=-g0
CXXFLAGS+=-m64
CXXFLAGS+=-march=native
CXXFLAGS+=-mtune=native
CXXFLAGS+=-pedantic
CXXFLAGS+=-pedantic-errors
CXXFLAGS+=-pipe
CXXFLAGS+=-s

all: $(TARGET)

$(TARGET): $(OBJECTS)
> $(LINK.cpp) $^ -o $@

clean:
> rm -f $(OBJECTS) $(TARGET)
