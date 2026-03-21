.PHONY: help run build clean

HUGO ?= hugo
PORT ?= 1313
BIND ?= 127.0.0.1

help:
	@printf "Available targets:\n"
	@printf "  make run    Start local dev server at http://$(BIND):$(PORT)\n"
	@printf "  make build  Build static site into ./public\n"
	@printf "  make clean  Remove generated ./public directory\n"

run:
	$(HUGO) server --bind $(BIND) --port $(PORT) --disableFastRender

build:
	$(HUGO)

clean:
	rm -rf public
