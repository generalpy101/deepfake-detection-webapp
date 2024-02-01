#!/bin/bash

NAME="project_settings"                                  # Name of the application
DJANGODIR=/app             # Django project directory
DJANGO_SETTINGS_MODULE=project_settings.settings             # which settings file should Django use
DJANGO_WSGI_MODULE=project_settings.wsgi                     # WSGI module name

echo "Starting $NAME as `whoami`"

# Create the run directory if it doesn't exist
RUNDIR=$(dirname $SOCKFILE)
test -d $RUNDIR || mkdir -p $RUNDIR

# Start your Django
python3 manage.py runserver 0.0.0.0:8000