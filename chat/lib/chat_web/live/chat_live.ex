defmodule ChatWeb.ChatLive do
  use Phoenix.LiveView

  def mount(%{"id" => room_id}, _session, socket) do # using pattern matching to get the room_id, instead of just using params
    socket = assign(socket, room_id: room_id)
    {:ok, socket}
  end

end
