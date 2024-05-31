defmodule PageTitleTestWeb.UserLive.Show do
  use PageTitleTestWeb, :live_view

  alias PageTitleTest.Accounts

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    user = Accounts.get_user!(id)

    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action, user))
     |> assign(:user, user)}
  end

  defp page_title(:show, user), do: "Show User: #{user.name}"
  defp page_title(:edit, user), do: "Edit User: #{user.name}"
end
