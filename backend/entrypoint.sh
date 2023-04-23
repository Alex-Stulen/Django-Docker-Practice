#!/bin/bash

python manage.py wait_for_db
python manage.py migrate

if [ "$DEBUG" = "True" ]; then
  python manage.py runserver 0.0.0.0:8000
else
  gunicorn djproject.wsgi:application -c deploy/gunicorn/gunicorn_config.py
fi
