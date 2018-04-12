builder-image:
	@docker build -t 4funio/otclient:builder .

internal-build:
	@mkdir -p build \
	&& cd build \
	&& cmake .. \
	&& make -j2 \
	&& cp otclient* ../

.PHONY: build
build:
	@docker run -ti --rm -v "$(PWD):/otclient" 4funio/otclient:builder make internal-build