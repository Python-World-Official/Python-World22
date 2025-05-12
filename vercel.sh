#!/bin/bash

# Run Django's collectstatic
python manage.py collectstatic --noinput

# Create public/static directory if not exists
mkdir -p public/static

# Copy collected static files to public/static
cp -r staticfiles/* public/static/