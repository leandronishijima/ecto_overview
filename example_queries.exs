import Ecto.Query
alias Ecto.Adapters.SQL
alias Linkly.Repo
alias Linkly.{Bookmark, Link, LinkTags, Tag, User}

links_to_insert =
  [
    [
      url: "https://alchemist.camp",
      inserted_at: DateTime.now(),
      updated_at: DateTime.now()
    ],
    [
      url: "https://reactor.am",
      inserted_at: DateTime.now(),
      updated_at: DateTime.now()
    ]
  ]

Repo.insert_all(links_to_insert)
