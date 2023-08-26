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
<https://hexdocs.pm/phoenix/installation.html```>

### Create a new project

```sh
mix new phoenix_keygen_htmx && cd $_
```

# Testing

```sh
mix test
```

skip test
```sh
@tag :skip
```

## Misc Notes

in `iex` returns -12th return results like '_' in ruby, but you can specify the result pointer

```elixir
v(-12)
```

char acii code

```elixir
?A
# 65

Enum.map(?a..?z, & <<&1>>)
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
#  "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

Enum.map(0..9, & Integer.to_string(&1))
# or 
Enum.map(?0..?9, & <<&1>>)

String.split("!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~", "", trim: true)
# ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/",
# ":", ";", "<", "=", ">", "?", "@", "[", "\\", "]", "^", "_", "`", "{", "|",
# "}", "~"]

```
