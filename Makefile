.PHONY: all clean build

all: build

clean:
	git clean -fdx .

build:
	mkdir -p build/wireguard
	curl --create-dirs -f -o build/wireguard.tar.xz https://git.zx2c4.com/WireGuard/snapshot/WireGuard-0.0.20181018.tar.xz
	tar -xf build/wireguard.tar.xz -C build/wireguard --strip-components 1
	make -C build/wireguard/src
