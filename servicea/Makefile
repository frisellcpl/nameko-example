run-wheel-builder:
	docker run --rm \
		-v "$$(pwd)":/application -v "$$(pwd)"/wheelhouse:/wheelhouse \
		pms-wheel-builder;

build-image:
	docker build -t servicea:latest -f docker.run .;
