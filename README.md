## Описание

[![Сборка](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fgithub.com%2Fakrasnov87%pg-autodoc%2Fraw%2Fmaster%2Fversion.json&query=%24.version&label=docker%20pull%20akrasnov87/pg-autodoc%3A)](https://hub.docker.com/repository/docker/akrasnov87/pg-autodoc/tags)

Утилита для формирования описания СУБД PostgreSQL (основана на https://github.com/cbbrowne/autodoc).

<pre>
docker run -it --env-file .env -v ./:/opt/autodoc autodoc
</pre>

После выполнения команды в выходном каталоге (в примере `./`) будет храниться файл `index.html`

### Сборка

<pre>
docker build . -t akrasnov87/pg-autodoc:1.0.0
</pre>

### Переменные

<pre>
cp .env-example .env
</pre>

Заполняем значения переменных:

* DATABASE - имя БД
* HOST - адрес сервера
* PORT - порт
* USER - пользователь
* PASSWORD - пароль к БД
* SCHEMA - схема или список схем, где разделителем является `|`