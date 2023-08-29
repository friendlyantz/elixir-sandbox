defmodule DimmerWeb.LightLive do
  use DimmerWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 50)
    IO.inspect(socket)
    {:ok, socket}
  end

  def render(assigns) do
    # can be ~L""" for less strict LEEX template
    ~H"""
    <div class="flex flex-col items-center justify-center h-screen">
      <h1>Light</h1>

      <div class="w-full bg-gray-200 rounded-full dark:bg-gray-700">
        <div
          class="bg-blue-600 text-xs font-medium text-blue-100 text-center p-0.5 leading-none rounded-full"
          style={"width: #{@brightness}%"}
        >
          <%= @brightness %> %
        </div>
      </div>

      <div class="inline-flex">

        <button
          phx-click="off"
          class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-l"
        >
        off
        </button>

        <button
          phx-click="decrement"
          class="bg-yellow-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4"
        >
          -
        </button>

        <button
          phx-click="increment"
          class="bg-orange-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 "
        >
          +
        </button>

        <button
          phx-click="on"
          class="bg-red-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-r"
        >
          max
        </button>

      </div>
    </div>
    """
  end

  def handle_event("off", _, socket) do
    {:noreply, assign(socket, :brightness, 0)}
  end

  def handle_event("on", _, socket) do
    {:noreply, assign(socket, :brightness, 100)}
  end

  def handle_event("decrement", _, socket) do
    {:noreply, assign(socket, :brightness, socket.assigns.brightness - 10)}
  end

  def handle_event("increment", _, socket) do
    # alternative approach with update
    {:noreply, update(socket, :brightness, &(&1 + 10))}
  end

end
