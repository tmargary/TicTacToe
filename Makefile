CXX := g++

SRC := $(wildcard src/*.cpp)
TESTS := $(wildcard test/*.cpp)
INCL_DIR := include/

TARGET_NAME := TicTacToe
TARGET_NAME_TESTS := TicTacToe-test

$(TARGET_NAME):
	@mkdir build
	@$(CXX) -I$(INCL_DIR) $(SRC) -o build/TicTacToe

$(TARGET_NAME_TESTS):
	@mkdir build/test
	@$(CXX) $(TESTS) -o build/test/TicTacToe-test

clean:
	@rm -r -f build && rm -r -f build/test
