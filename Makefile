.ONESHELL:
.RECIPEPREFIX = >

SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=ranton

CXX=g++
CXXFLAGS=-std=c++23
CXXFLAGS+=-g0
CXXFLAGS+=-m64
CXXFLAGS+=-march=native
CXXFLAGS+=-mtune=native
CXXFLAGS+=-O2
CXXFLAGS+=-pedantic
CXXFLAGS+=-pedantic-errors
CXXFLAGS+=-pipe
CXXFLAGS+=-s
CXXFLAGS+=-Wall
CXXFLAGS+=-Werror
CXXFLAGS+=-Wextra
CXXFLAGS+=-Wpedantic

all: $(TARGET)

$(TARGET): $(OBJECTS)
> $(LINK.cpp) $^ -o $@

clean:
> $(RM) $(TARGET)
> $(RM) $(OBJECTS)
