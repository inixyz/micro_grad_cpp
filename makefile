CXX := g++
CXXFLAGS := -Wall

SRC := src/*.cpp
INCLUDE := src
TARGET := micro_grad_cpp

.PHONY: all format clean

all: format
	$(CXX) $(SRC) -o $(TARGET)

format:
	clang-format -i --style=LLVM $(SRC) $(INCLUDE)/*.h

clean:
	rm $(TARGET)