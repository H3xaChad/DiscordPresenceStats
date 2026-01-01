.PHONY: help install run web docker-build docker-up docker-down docker-logs docker-clean

help:
	@echo "Local Development:"
	@echo "  make install        Install dependencies"
	@echo "  make run            Run the Discord bot"
	@echo "  make web            Run the web interface"
	@echo ""
	@echo "Docker:"
	@echo "  make docker-build   Build Docker image"
	@echo "  make docker-up      Start containers"
	@echo "  make docker-down    Stop containers"
	@echo "  make docker-logs    Show container logs"
	@echo "  make docker-clean   Remove containers and images"

install:
	uv sync --extra web

run:
	uv run python main.py

web:
	uv run python web_main.py

docker-build:
	docker compose build --no-cache

docker-up:
	docker compose up -d