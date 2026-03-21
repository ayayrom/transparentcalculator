# README

This ruby on rails project is to create a calculator that can recursively break down its steps and show it in a tree-like fashion.

## Ruby version
truffleruby 33.0.1 (2026-01-20)

## Configuration
This project was tinkered to use PostgreSQL instead of SQLite because of PostgreSQL's support for JSONB.

## Deployment
For a simple deployment, I have given a docker-compose.yml that allows this to deploy easily. Simply do `docker compose up -d --build` and `docker compose exec web bin/rails db:create` to create the docker containers and set up the database.
