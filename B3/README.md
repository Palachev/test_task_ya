### B3

При каждом `push` в ветку `main` автоматически запускается CI/CD пайплайн.

```text
push → tests → build image → push image → notify
```
Как работает?

1. После `push` в `main` запускаются тесты
2. Если тесты прошли успешно — собирается Docker-образ
3. Образ отправляется в Docker Registry
4. В Telegram отправляется уведомление об успешном или неуспешном выполнении

Примечание на этапе notify мы можем использовать готовый actions `uses: appleboy/telegram-action` и тогда этот этап выглядел бы так:

``` yaml
- name: Send Telegram notification
  uses: appleboy/telegram-action@v1.0.0
  with:
    to: ${{ secrets.TG_CHAT_ID }}
    token: ${{ secrets.TG_BOT_TOKEN }}
    message: CI finished

```
