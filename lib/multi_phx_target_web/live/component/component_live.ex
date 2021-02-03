defmodule MultiPhxTargetWeb.ComponentLive do
  use MultiPhxTargetWeb, :live_component

  def update(assigns, socket) do
    {:ok, assign(socket, :text, assigns.component_text)}
  end

  def handle_event("click", _, socket) do
    {:noreply, assign(socket, :text, "clicked the button")}
  end
end
