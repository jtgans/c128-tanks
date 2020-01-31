PROGRAM_SRCS := $(wildcard *.a)

tanks: tanks.d64

tanks.prg: $(PROGRAM_SRCS)

test: tanks.d64 tanks.vice
	$(X128) \
		+mouse \
		-moncommands "tanks.moncommands" \
		-sdlinitialw 1158     \
		-sdlinitialh 991      \
		-autostart tanks.d64

.PHONY: tanks test clean

include Makefile.acme
