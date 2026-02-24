# PG Booking

Репка для поднятия демо баз:
* [booking](https://postgrespro.ru/education/demodb)

## Как развернуть

Для работы с сервисом вам необходимо установить [Task](https://taskfile.dev/).

1. Копируем .env
   ```bash
   task cp-env
   ```
2. Скачиваем дамп базы
   ```bash
   task download-dump
   ```
3. Поднимаем контейнеры
   ```bash
   task compose-up
   ```
4. Накатываем дамп базы
   ```bash
   task import-dump
   ```
5. При подключении из pgadmin в хостах прописываем postgres - имя контейнера c postgres, имя базы - demo

## Дополнительная информация

* [bookings, статья на хабре](https://habr.com/ru/companies/postgrespro/articles/956096/)
* [PostgreSQL. Профессиональный SQL](https://postgrespro.ru/education/books/advancedsql)
* [Запросы в PostgreSQL. Профессиональный SQL](https://pubgit.postgrespro.ru/pub/advancedsql/)