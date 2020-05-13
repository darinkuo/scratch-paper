CC  = gcc
CCFLAGS =  -I./../../../gem5/include/

M5_SRC :=\
../../../gem5/util/m5/m5op_x86.S

all:
	$(CC) $(CCFLAGS) -o hello_world hello.c $(M5_SRC)

clean:
	-$(RM) hello_world
