# PG Booking

Репка для поднятия демо баз:
* [booking](https://postgrespro.ru/education/demodb)

## Как развернуть

1. Копируем .env
   ```bash
   cp .env.example .env
   ```
2. Скачиваем дамп базы
   ```bash
   make download-booking
   ```
3. Поднимаем контейнеры
   ```bash
   make up
   ```
4. Накатываем дамп базы
   ```bash
   make import-booking
   ```
5. При подключении из pgadmin в хостах прописываем postgres - имя контейнера c postgres

## Дополнительная информация

* [bookings, статья на хабре](https://habr.com/ru/companies/postgrespro/articles/956096/)
* [PostgreSQL. Профессиональный SQL](https://postgrespro.ru/education/books/advancedsql)
* [Запросы в PostgreSQL. Профессиональный SQL](https://pubgit.postgrespro.ru/pub/advancedsql/)