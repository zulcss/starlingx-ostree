all: bootstrap image-amd64
ostree: bootstrap ostree-commit ostree-image

bootstrap:
	rm -f rootfs.tar.gz
	debos -v bootstrap.yaml

ostree-commit:
	debos -v ostree-commit.yaml

ostree-image:
	debos -v ostree-image-amd64.yaml

image-amd64:
	rm -f disk.img
	debos -v image-amd64.yaml

clean:
	rm -f ostree-disk.img
	rm -f disk.img
	rm -f rootfs.tar.gz
