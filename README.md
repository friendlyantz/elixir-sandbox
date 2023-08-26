# Installation

```sh
# do the same for erlang if required
asdf plugin add elixir
asdf install elixir latest
asdf global elixir latest
```

## Phoenix

Upd `hex` package manager and then install `phx_new` archive

```sh
mix local.hex
mix archive.install hex phx_new
```
https://hexdocs.pm/phoenix/installation.html```

### Create a new project

```sh
mix new phoenix_keygen_htmx && cd $_
```
## Misc Notes

in `iex` returns -12th return results like '_' in ruby, but you can specify the result pointer

```elixir
v(-12)
```