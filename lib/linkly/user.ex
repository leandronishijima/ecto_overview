defmodule Linkly.User do
  use Ecto.Schema

  alias Linkly.Bookmark

  schema "users" do
    field(:about)
    field(:email)
    field(:username)
    has_many(:bookmarks, Bookmark)

    timestamps()
  end
end
