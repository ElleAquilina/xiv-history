#!/bin/sh

until pg_isready -h db -p 5432 -U "${POSTGRES_USER}"; do
    echo "Waiting on Postgres to be ready..."
    sleep 2
done

echo "Postgres ready. Running migrations..."
dbmate up