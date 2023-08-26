# Counter

## Setup

use `make`
```sh
make install
make run
make open_web
```

OR

```bash
mix phx.server
```
got to http://localhost:4000/counter
## Notes
refer https://hexdocs.pm/phoenix_live_view/welcome.html

> Note: this reminds me a bit oh HTMX
```elixir
# router
live "/counter", CounterLive

# create /lib/counter_web/live/counter_live.ex

defmodule CounterWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do # _params is new
    {:ok, assign(socket, count: 0)}
  end

  def render(assigns) do
    # sigil
    ~L"""
    <div class="container">
      <h1>Count: <%= @count %></h1>
      <button>+</button>
      <button>-</button>
      <!-- <button phx-click="increment">Increment</button> -->
    </div>
    """
  end

end

```

![image](https://github.com/friendlyantz/elixir-sandbox/assets/70934030/3a50547d-73a3-4aae-b0bf-72f08580ba62)
