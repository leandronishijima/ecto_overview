defmodule Linkly.User do
  use Ecto.Schema

  alias Linkly.{Bookmark, Link, Tag, LinkTags}

  schema "users" do
    field(:about)
    field(:email)
    field(:username)
    has_many(:bookmarks, Bookmark)
    has_many(:bookmarked_links, through: [:bookmarks, :link])
    has_many(:taggings, LinkTags)
    many_to_many(:tagged_links, Link, join_through: LinkTags)
    many_to_many(:tags, Tag, join_through: LinkTags)

    timestamps()
  end
end
