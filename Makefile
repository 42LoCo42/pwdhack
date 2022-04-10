CFLAGS := -Wall -Wextra -fPIC -shared

pwdhack.so: pwdhack.c
	$(CC) $(CFLAGS) $^ -o $@

test: pwdhack.so
	rlwrap -c ./test
.PHONY: test
