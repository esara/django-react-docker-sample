.PHONY: build-api build-frontend

build: build-api build-frontend

build-api:
	docker buildx build -t esara/django-api --platform "linux/amd64,linux/arm64" --push ./api

build-frontend:
	docker buildx build -t esara/django-frontend --platform "linux/amd64,linux/arm64" --push ./frontend

deploy:
	kubectl apply -f k8s.yaml
