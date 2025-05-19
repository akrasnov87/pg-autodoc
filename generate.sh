#!/usr/bin/sh

# имя выходного файла
OUTPUT_FILE_NAME=index

cd /autodoc
./postgresql_autodoc -d $DATABASE -h $HOST -p $PORT -u $USER --password=$PASSWORD -t html -s "$SCHEMA" -f /opt/autodoc/$OUTPUT_FILE_NAME