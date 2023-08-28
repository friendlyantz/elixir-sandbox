# Installation 

refer Makefile for setup -> type `make` in terminal
```
make
make install
make run
make open_web
```

To Enable Live reload during development on Linux you need to:
```sh
apt install inotify-tools
```

# Dev Notes

- Using Tailwind which works fantaastic out of the box
- Added `MnemonicSlugs` package to generate random names
```elixir
MnemonicSlugs.generate_slug(2)
```

## Logger
```elixir
require Logger
Logger.debug("Hello")
```

## Redirect in LiveView witgh `push_redirect`

```elixir
@impl true
def handle_event("random-room", _params, socket) do
  room_name = MnemonicSlugs.generate_slug(4)
  {:noreply, push_redirect(socket, to: "/" <> room_name)}
end
```
this is picked up by router pattern matching
```elixir
live "/:id", ChatLive, :chat # chat template is optional
```
# Users

```sh
mix phx.gen.schema User users name:string
mix ecto.migrate
```

# Resources

https://www.youtube.com/watch?app=desktop&v=fyg0FuSL5DY