
all: world

world: world.zip
	unzip -o world.zip

.PHONY: clean
clean:
	rm -rf __MACOSX world
	rm -f world.zip
