## Описание

Утилита для формирования описания СУБД PostgreSQL (основана на https://github.com/cbbrowne/autodoc).

<pre>
docker run -it --env-file .env -v ./:/opt/autodoc akrasnov87/pg-autodoc:latest
</pre>

После выполнения команды в выходном каталоге (в примере `./`) будет храниться файл `index.html`

Описание версий см. [CHANGELOG.md](./CHANGELOG.md).

### Сборка

<pre>
docker build . -t akrasnov87/pg-autodoc:latest
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