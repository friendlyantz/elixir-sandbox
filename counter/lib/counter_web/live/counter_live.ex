defmodule CounterWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket = assign(socket, :count, 0)
    {:ok, socket}
  end

  def render(assigns) do
    # sigil
    ~L"""
    <div class="flex flex-col items-center justify-center h-screen">
      <h1 class="text-3xl font-bold underline">Count: <%= @count %></h2>
      <div class="inline-flex">
        <button phx-click="increment"
                class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-l">
                +
        </button>
        <button phx-click="decrement"
                class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-r">
                -
        </button>
      </div>
    </div>
    """
  end

  def handle_event("increment", _, socket) do
    count = socket.assigns.count + 1
    socket = assign(socket, count: count)
    {:noreply, socket}
  end

  def handle_event("decrement", _, socket) do
    count = socket.assigns.count - 1
    socket = assign(socket, count: count)
    {:noreply, socket}
  end
end
