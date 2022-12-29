defmodule Otakuhabu.Repo.Migrations.CreateAnimes do
  use Ecto.Migration

  def change do
    create table(:animes) do
      add :title, :string
      add :premiered_in, :date
      add :total_seasons, :integer
      add :status, :string
      add :source, :string

      timestamps()
    end
  end
end
