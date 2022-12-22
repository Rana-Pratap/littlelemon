#!/bin/bash

# Build the project
echo "Building th project..."
python3.11 -m pip install -r requirements.txt

echo "Make Migrations..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

echo "Collect Static..."
python3.11 manage.py collectstatic --noinput --clear