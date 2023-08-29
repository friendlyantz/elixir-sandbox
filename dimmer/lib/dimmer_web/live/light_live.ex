defmodule DimmerWeb.LightLive do
  use DimmerWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, brightness: 50)}
  end

  def render(assigns) do
    # can be ~L""" for less strict LEEX template
    ~L"""
    <h1>Light</h1>

    <div class="w-full bg-gray-200 rounded-full dark:bg-gray-700">
      <div
        class="bg-blue-600 text-xs font-medium text-blue-100 text-center p-0.5 leading-none rounded-full"
        style="width: <%= @brightness %>%;">
        <%= @brightness %> %
      </div>
    </div>
    """
  end

  def handle_event("up", _, socket) do
    {:noreply, assign(socket, :brightness, socket.assigns.brightness + 1)}
  end

  def handle_event("down", _, socket) do
    {:noreply, assign(socket, :brightness, socket.assigns.brightness - 1)}
  end
end
