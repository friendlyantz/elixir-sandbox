defmodule ChatWeb.PageLive do
  use ChatWeb, :live_view
  require Logger

  @impl true
  def moutn(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def handle_event("random-room", _params, socket) do
    room_name = MnemonicSlugs.generate_slug(4)
    Logger.info(room_name)
    {:noreply, push_redirect(socket, to: "/" <> room_name)}
  end
end
