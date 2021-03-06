scr=$(windcard ./*.c)
obj=$(patsubst %.c,%.o,$(scr))
test:$(obj)
		gcc  $^ -o $@
%.0:%.c
		gcc -c $< -0 $@
.PHONY:clean
	clean:
	rm -rf $(obj) test
