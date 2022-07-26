defmodule Linkly.Repo.Migrations.AddAboutToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :about, :text
    end
  end
end
