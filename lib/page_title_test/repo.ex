defmodule PageTitleTest.Repo do
  use Ecto.Repo,
    otp_app: :page_title_test,
    adapter: Ecto.Adapters.Postgres
end
