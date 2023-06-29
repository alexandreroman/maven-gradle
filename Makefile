IMAGE := ghcr.io/alexandreroman/maven-gradle:17

all: build

build:
	docker build -t ${IMAGE} .

push: build
	docker push ${IMAGE}
