# docker_server
Этот репозиторий служит для быстро разворачивания [Mashin learning server](https://github.com/Gurman520/diplom_server) через docker compose

# Основной репозиторий
Ссылка на основной проект [Mashin learning server](https://github.com/Gurman520/diplom_server)

# Используется
Внутри docker compose используется:
1. PostgreSql версии 13.3
2. Dockerfile внутри которого запускается основной сервер
3. В Dockerfile используется Ubuntu 22.04

# Системный требования
1. Windows 10/11 или Ubuntu 22.04
2. Установленный docker

# Запуск
Для запуска контейнеров необходимо:
1. Клонировать репозиторий
2. Перейти в репозиторий и выполнить команду _docker compose build_, чтобы собрать Dockerfile
3. Выполнить команду _docker compose up_, чтобы запустить контейнеры

# Точка доступа
После запуска, точкой доступа к сервису будет _http://localhost:8000/_


При обращении на _http://localhost:8000/_ произойдет редирект на документацию API проекта
