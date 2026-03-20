# README

This ruby on rails project is to create a calculator that can recursively break down its steps and show it in a tree-like fashion.

## Ruby version
truffleruby 33.0.1 (2026-01-20)

## Configuration
This project was tinkered to use PostgreSQL instead of SQLite because of PostgreSQL's support for JSONB.

## Database
The database must be ran concurrently with the rails server, with `docker compose up -d`. You can configure the ports and user/password as needed.
