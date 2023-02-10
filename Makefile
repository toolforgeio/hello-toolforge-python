IMAGE := docker.toolforge.io/toolforgeio/hello-toolforge

build: 
	docker build -t ${IMAGE} .

release: build
	docker push ${IMAGE}
