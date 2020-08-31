### An Elixir Application
How do I set up my Elixir environment?
W
Check up the Phoenix [installation guide](https://hexdocs.pm/phoenix/installation.html).

### How to start the Discuss App:

  * Install dependencies with `mix deps.get`
  * Start Postgres Database with `docker-compose up`
  * Create and migrate your database with `mix ecto.create`
  * Start Phoenix endpoint with `mix phx.server`

Now the API should be accessible through [`localhost:4000`](http://localhost:4000)

### Dependencies SSO
  * The application is using Ueberauth SSO with github [REPO](https://github.com/ueberauth/ueberauth)
  * List of SSO available ueberauth [guide](https://github.com/ueberauth/ueberauth/wiki/List-of-Strategies)

### To test:
  * run `mix test` to test

### To compile:
  
  * run `mix clean` to clean last App Compile
  * run `mix compile` to recompile

### Useful Phoenix
  * run `mix phx.new name_of_your_project` to create a phoenix project
  * run `mix phx.server` to start server
  * run `mix phx.routes` to see the routes of the app
  * run `iex -S mix` to run in command line

### Useful Ecto:
  
  * run `mix ecto.setup` to create database and seeds
  * run `mix ecto.reset` to truncate database and seeds
  * run `mix ecto.gen.migration update_posts_table` to create migration
  * run `mix ecto.migrate` to get last migrate
  * run `mix ecto.rollback` to rollback to previous migrate

  [`Cheatsheet`](https://devhints.io/phoenix-migrations)
