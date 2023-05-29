all: bootstrap image-amd64

bootstrap:
	rm -f rootfs.tar.gz
	debos -v bootstrap.yaml

ostree:
	debos -v ostree-commit.yaml

image-amd64:
	rm -f disk.img
	debos -v image-amd64.yaml

clean:
	rm -f disk.img
	rm -f rootfs.tar.gz
