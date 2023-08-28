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

# Users

```sh
mix phx.gen.schema User users name:string
mix ecto.migrate
```
