CC=gcc

CCFLAGS=-I. -Wno-int-conversion -lm -ggdb -DDRG_DEBUG=1 -static\
-I./../../../gem5/include/

DEPS = activations_fp.h

SRCS := neural_network_fp.c activations_fp.c test_main_fp.c ./../../../gem5/util/m5/m5op_x86.S

OBJS := $(patsubst %.cc,%.o,$(patsubst %.c,%.o,$(SRCS)))

%.o: %.c
	$(CC) $(CCFLAGS) $(INCLUDES) -c $< -o $@

test_main_fp: $(OBJS)
	$(CC) -o $@ $^ $(CCFLAGS)

.PHONY: clean

clean:
	-$(RM) $(OBJS)
	-$(RM) test_main_fp
