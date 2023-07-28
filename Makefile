CC=clang
CFLAGS = -Iinclude $(shell pkg-config --cflags glfw3 glew)
LIBS = $(shell pkg-config --libs glfw3 glew) -lGL -lm -lpthread -ldl

bin/game: src/main.c
	$(CC) $(CFLAGS) src/main.c -o bin/game $(LIBS)

.PHONY: run
run: bin/game
	cd bin && ./game
