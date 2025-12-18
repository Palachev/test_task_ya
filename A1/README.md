### A1

В директории `test-project/` находятся все необходимые файлы.  Ниже — ответы на устные вопросы

#### 4) Запуск контейнера с пробросом порта 8080 (host) → 80 (container)

```bash
docker run --rm -d --name my-web-app -p 8080:80 my-web-app:latest
```

#### 7) Как доставить `index.html` в контейнер без пересборки образа?

Один из способов — вынести контент во внешний **Docker volume** и примонтировать его в директорию Nginx `/usr/share/nginx/html`.

**docker-compose.yml с volume:**

```yaml
services:
  web:
    image: nginx:alpine
    container_name: my-web-app
    ports:
      - "8080:80"
    volumes:
      - web-content:/usr/share/nginx/html:ro

volumes:
  web-content:
```


