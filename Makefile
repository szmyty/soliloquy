.PHONY: install test build publish docker-run

install:
	poetry install

test:
	poetry run pytest tests/

build:
	poetry build

publish:
	poetry publish

docker-run:
	docker run --rm keywi/soliloquy
