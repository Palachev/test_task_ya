### A1
В директории test-project есть все необходимые файлы и вот ответы на устные вопросы
4) Запусти контейнер из этого образа, пробросив порт 8080 хоста на порт 80 контейнера. Для запуска контейнера пробросив порт хоста с 8080 на порт 80, нам нужно выполнить следующую команду:
`docker run --rm -d --name my-web-app -p 8080:80 my-web-app:latest`
7) Как можно доставить твой index.html в контейнер, не пересобирая образ? 
  Мы можем использовать volume, ниже показан docker compose файл с использованием volume:
  ``` yml
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
