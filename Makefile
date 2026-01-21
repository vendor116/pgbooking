# Makefile for pgbooking application
include .env
export

help: ## Показать доступные команды
	@grep -h -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

up: ## Запустить Docker контейнеры
	@echo "Docker compose up..."
	docker compose up -d

down: ## Остановить Docker контейнеры
	@echo "Docker compose down..."
	docker compose down

psql: ## Подключиться через psql
	@echo "Connecting to booking database..."
	docker exec -it postgres bash -c "PGPASSWORD='$(POSTGRES_PASSWORD)' psql -U '$(POSTGRES_USER)'"

download-booking: ## Скачать дамп базы booking
	@echo "Downloading booking dump file..."
	wget -O ./postgres/data/$(BOOKING_FILENAME) $(BOOKING_LINK)

import-booking: ## Импортировать дамп booking
	@echo "Importing dump booking..."
	docker exec -it postgres bash -c "gunzip -c '/tmp/postgres/data/${BOOKING_FILENAME}' | psql -U '${POSTGRES_USER}'"

.PHONY: \
	help \
	up \
	down \
	psql \
	download-booking \
	import-booking \
	psql