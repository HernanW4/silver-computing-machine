#!/bin/bash
set -e

# Wait for the database to be ready (optional, recommended for production)

# Run database migrations
echo "Running migrations"
python manage.py migrate --noinput

# Start gunicorn
exec "$@"

