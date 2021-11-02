VERSION = 6.7.0

IMAGE = hojas/alinode:${VERSION}
IMAGE_LATEST = hojas/alinode:latest

image:
	docker build -t $(IMAGE) -t $(IMAGE_LATEST) -f Dockerfile .
	docker image prune -f

push-image:
	docker push $(IMAGE)
	docker push $(IMAGE_LATEST)