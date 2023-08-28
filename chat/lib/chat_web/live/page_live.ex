defmodule ChatWeb.PageLive do
  use ChatWeb, :live_view

  @impl true
  def moutn(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

end
