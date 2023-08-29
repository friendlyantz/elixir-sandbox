elixir projects arranged in subfolders
- `counter` - Elementrary Counter LiveView Demo. refer readme / Makefile
- `dimmer` - LiveView Light Dimmer. refer readme / Makefile. Foolowing [YouTube demo](https://www.youtube.com/watch?v=AsyGYpQFiIA)
- `chirp` - Twitter Clone LiveView Demo. refer readme / Makefile. foolowing [Phoenix LiveView demo](https://www.youtube.com/watch?v=MZvmYaFkNJI)
- `chat` - LiveView Chat(WIP) with DB. refer readme / Makefile.
- `pacman` - WIP TDD RyanBigg's Toy Robot book / challange
- `keygen` - TDDing Keygen module with validations as per YouTube(incomple/abandoned due to poor tutorial content)

# Dependencies Installation

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

# Create a new project

```sh
mix new project_name && cd $_
mix phx.new project_name --no-ecto # skip db setup
mix phx.new live_view_project_name --live # live view
```

## Run server

use `make`

OR
```sh
mix deps.get # install dependencies

mix phx.server # run server
# or
iex -S mix phx.server # run server in iex
```

# Phoenix

https://github.com/phoenixframework/phoenix_live_view

## Inline templating HEEX / LEEX. and @ vs assigns

```elixir

# ~H""" - HEEX (preferred, strict, has checks)
# ~L""" - LEEX
# but I was only able to include vaiadles into CSS using LEEX only
style="width: <%= @brightness %>%;">

def render(assigns) do
  ~H""" 
  <div class="container">
    <%= @brightness %>
    <%!-- OR assigns.brightness --%>
    ...
  </div>
  """
end


```
# Debugging

```elixir
socket = assign(socket, :brightness, 50)
IO.inspect(socket)
```

note `__changed__: %{brightness: true},` below

```sh
#Phoenix.LiveView.Socket<
  id: "phx-F3-5vOeaxOOoKB-j",
  endpoint: DimmerWeb.Endpoint,
  view: DimmerWeb.LightLive,
  parent_pid: nil,
  root_pid: #PID<0.4258.0>,
  router: DimmerWeb.Router,
  assigns: %{
    flash: %{},
    __changed__: %{brightness: true},
    live_action: nil,
    brightness: 50
  },
  transport_pid: #PID<0.4249.0>,
  ...
>
```
# Testing

```sh
mix test
```

skip test
```sh
@tag :skip
```
# Phoenix LiveView SPA

![image](https://github.com/friendlyantz/elixir-sandbox/assets/70934030/8bce8764-be8d-49e7-bf66-8b4dd57739ce)

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
