#! /bin/bash

(trap 'kill 0' SIGINT; Rscript launch.R & python manage.py runserver 29000)

