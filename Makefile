.PHONY: all build clean download install

WIREGUARD_VERSION=0.0.20181018

all: build

clean:
	git clean -fdx .

download:
	mkdir -p build/wireguard
	curl --create-dirs -f -o build/wireguard.tar.xz https://git.zx2c4.com/WireGuard/snapshot/WireGuard-$(WIREGUARD_VERSION).tar.xz
	tar -xf build/wireguard.tar.xz -C build/wireguard --strip-components 1

build: download
	make -C build/wireguard/src

install:
	make install
