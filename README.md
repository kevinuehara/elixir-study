### An Elixir Application
How do I set up my Elixir environment?

Check up the Phoenix [installation guide](https://hexdocs.pm/phoenix/installation.html). Following it you will find information on how to install Elixir, Erlang, PostgreSQL and Phoenix. All of which you will need to successfully run garuda.

### How to start:

  * Install dependencies with `mix deps.get`
  * Start Postgres Database with `docker-compose up`
  * Create and migrate your database with `mix ecto.create`
  * Start Phoenix endpoint with `mix phx.server`

Now the API should be accessible through [`localhost:4000`](http://localhost:4000)

### To test garuda:
  * run `mix test` to test

### To compile garuda:
  
  * run `mix clean` to clean last App Compile
  * run `mix compile` to recompile

### Useful Ecto:
  
  * run `mix ecto.setup` to create databse and seeds
  * run `mix ecto.reset` to truncate databse and seeds
  * run `mix ecto.gen.migration update_posts_table` to create migration
  * run `mix ecto.migrate` to get last migrate
  * run `mix ecto.rollback` to rollback to previous migrate

  [`Cheatsheet`](https://devhints.io/phoenix-migrations)
