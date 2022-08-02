defmodule Linkly.User do
  use Ecto.Schema

  alias Linkly.{Bookmark, Link, Tag, LinkTag}

  schema "users" do
    field(:about)
    field(:email)
    field(:username)
    has_many(:bookmarks, Bookmark)
    has_many(:bookmarked_links, through: [:bookmarks, :link])
    has_many(:taggings, LinkTag)
    many_to_many(:tagged_links, Link, join_through: LinkTag)
    many_to_many(:tags, Tag, join_through: LinkTag)

    timestamps()
  end
end
