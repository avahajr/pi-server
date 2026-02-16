
all: world

world: world.zip
	unzip -o world.zip

.PHONY: clean
clean:
	rm -rf __MACOSX world
	rm -f world.zip

.PHONY: clean-docker
clean-docker:
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
