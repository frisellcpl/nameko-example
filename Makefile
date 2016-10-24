IMAGES := servicea

build-base:
	docker build -t pms-base -f docker/docker.base .;

build-wheel-builder: build-base
	docker build -t pms-wheel-builder -f docker/docker.build .;

run-wheel-builder: build-wheel-builder
	for image in $(IMAGES) ; do make -C $$image run-wheel-builder; done

build-images: run-wheel-builder
	for image in $(IMAGES) ; do make -C $$image build-image; done

build: build-images
