# PG Booking

Репка для поднятия демо баз:
* [booking](https://postgrespro.ru/education/demodb)
* [thai](https://github.com/aeuge/postgres16book/blob/main/database/README.md)

## Как развернуть

1. Копируем .env
   ```bash
   cp .env.example .env
   ```

2. Скачиваем дамп базы
   ```bash
   make download-booking
   ```
   ```bash
   make download-thai
   ```

3. Поднимаем контейнеры
   ```bash
   make up
   ```

4. Накатываем дамп базы
   ```bash
   make import-booking
   ```
   ```bash
   make import-thai
   ```
5. При подключении из pgadmin в хостах прописываем postgres - имя контейнера c postgres

## Дополнительная информация

* [bookings, статья на хабре](https://habr.com/ru/companies/postgrespro/articles/956096/)
* [Книга: PostgreSQL 16: лучшие практики оптимизации](https://github.com/aeuge/postgres16book)