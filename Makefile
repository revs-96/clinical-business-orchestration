.PHONY: help setup install migrate run test clean

help:
	@echo "Clinical Business Orchestration - Available Commands"
	@echo "setup          - Initial setup"
	@echo "install        - Install dependencies"
	@echo "migrate        - Run migrations"
	@echo "run            - Start services"
	@echo "test           - Run tests"
	@echo "clean          - Cleanup"

setup:
	cp .env.example .env
	cp backend/.env.example backend/.env 2>/dev/null || true
	cp frontend/.env.example frontend/.env 2>/dev/null || true
	@echo "✅ Setup complete"

install:
	docker-compose build
	@echo "✅ Dependencies installed"

migrate:
	docker-compose exec backend python -m alembic upgrade head

run:
	docker-compose up -d
	@echo "✅ Services started at http://localhost:3000"

test:
	docker-compose exec backend pytest

clean:
	docker-compose down -v
