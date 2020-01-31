TANKS_SRCS := $(wildcard *.a)

tanks: tanks.d64

test: tanks.d64 tanks.vice
	$(X128) \
		+mouse \
		-moncommands "tanks.moncommands" \
		-sdlinitialw 1158     \
		-sdlinitialh 991      \
		-autostart tanks.d64

.PHONY: tanks test clean

include Makefile.acme
