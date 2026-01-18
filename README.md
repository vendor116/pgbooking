# PG Booking application

Репка для поднятия демо базы booking postgres

## Как развернуть

Копируем .env
```bash
cp ./.env.example ./.env
```

Скачиваем дамп базы booking
```bash
make download-booking
```

Поднимаем контейнеры
```bash
make up
```

Накатываем дамп базы
```bash
make import-booking
```

При подключении из pgadmin в хостах прописываем postgres - имя контейнера c postgres