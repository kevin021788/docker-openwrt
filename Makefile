build: rootfs.tgz
	@docker build -t kevin0217/openwrt .

login:
	@docker login

push:
	@docker push kevin0217/openwrt

rootfs.tgz:
	@wget https://downloads.openwrt.org/snapshots/trunk/x86/64/openwrt-x86-64-generic-rootfs.tar.gz -O rootfs.tgz

clean:
	@rm -f rootfs.tgz
	@docker rmi kevin0217/openwrt
