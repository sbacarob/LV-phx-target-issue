defmodule MultiPhxTargetWeb.PageLiveTest do
  use MultiPhxTargetWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")

    page_live
    |> element("button", "Click me")
    |> render_click()
    |> IO.inspect()
  end
end
