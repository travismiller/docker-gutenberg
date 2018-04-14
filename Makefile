NAME   := puckbag/gutenberg
TAG    := $(TAG)
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

all: build clean

clean:
	-rm -f gutenberg*

build:
	test "${TAG}"
	wget "https://github.com/Keats/gutenberg/releases/download/${TAG}/gutenberg-${TAG}-x86_64-unknown-linux-gnu.tar.gz"
	tar -xzf "gutenberg-${TAG}-x86_64-unknown-linux-gnu.tar.gz"
	docker build -t "${IMG}" .
	docker tag ${IMG} ${LATEST}

push:
	@docker push ${NAME}

login:
	@docker log -u ${DOCKER_USER} -p ${DOCKER_PASS}
