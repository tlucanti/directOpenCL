
all:
	clang \
		-Wall -Wextra \
		-fdiagnostics-color=always \
		-O0 -g3 -fno-omit-frame-pointer -fno-inline \
		-I include \
		-I cllib/include \
		-D CONFIG_DEVICE_TYPE_GPU \
		-D CONFIG_PRINT_PROGRAM_LOG \
		cllib/src/cllib.c src/main.c src/panic.c \
		/usr/lib/x86_64-linux-gnu/libOpenCL.so

