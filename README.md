Репозиторий содержит решения тестового задания (все задачи в одном месте).

Структура
.
├── docker/      # Dockerfile, docker-compose.yml, index.html (Nginx + кастомная страница)
├── scripts/     # clean_old_logs.sh (удаление .log старше N дней с подтверждением)
├── git/         # git-cheatsheet.md (stash/switch/amend сценарии)
├── ci/          # github-actions-ci.yml (пример CI: tests → build → push → telegram)
└── README.md
Где что смотреть

Docker: docker/

Bash: scripts/clean_old_logs.sh

Git: git/git-cheatsheet.md

CI/CD: ci/github-actions-ci.yml
