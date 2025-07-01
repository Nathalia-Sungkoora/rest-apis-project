#!/bin/sh
export FLASK_APP=wsgi.py
flask db upgrade
exec gunicorn --bind 0.0.0.0:80 wsgi:app
