## Описание

Утилита для формирования описания СУБД PostgreSQL (основана на https://github.com/cbbrowne/autodoc).

<pre>
docker run -it --env-file .env -v ./:/opt/autodoc autodoc
</pre>

После выполнения команды в выходном каталоге (в примере `./`) будет храниться файл `index.html`

### Сборка

<pre>
docker build . -t akrasnov87/autodoc:1.0.0
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