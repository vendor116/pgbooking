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

connect-booking: ## Подключиться к базе данных booking
	@echo "Connecting to booking database..."
	docker exec -it postgres bash -c "PGPASSWORD='$(POSTGRES_PASSWORD)' psql -U '$(POSTGRES_USER)' -d '$(POSTGRES_DB)'"

download-booking: ## Скачать дамп базы booking
	@echo "Downloading booking dump file..."
	wget -O ./postgres/data/$(BOOKING_FILENAME) $(BOOKING_LINK)

import-booking: ## Импортировать дамп booking
	@echo "Importing dump booking..."
	docker exec -it postgres bash -c "gunzip -c '/tmp/postgres/data/${BOOKING_FILENAME}' | psql -U '${POSTGRES_USER}'"

download-thai: ## Скачать дамп базы thai
	@echo "Downloading thai dump file..."
	wget -O ./postgres/data/$(THAI_FILENAME) $(THAI_LINK)

import-thai: ## Импортировать дамп thai
	@echo "Importing dump booking..."
	docker exec -it postgres bash -c "tar -xOf '/tmp/postgres/data/$(THAI_FILENAME)' | psql -U '${POSTGRES_USER}'"

.PHONY: \
	help \
	up \
	down \
	download-booking \
	import-booking \
	download-thai \
	import-thai \
	psql