defmodule Otakuhabu.Collection.Anime do
  use Ecto.Schema
  import Ecto.Changeset

  schema "animes" do
    field(:premiered_in, :date)
    field(:source, :string)
    field(:status, :string)
    field(:title, :string)
    field(:total_seasons, :integer)

    timestamps()
  end

  @doc false
  def changeset(anime, attrs) do
    anime
    |> cast(attrs, [:title, :premiered_in, :total_seasons, :status, :source])
    |> validate_required([:title, :premiered_in, :total_seasons, :status, :source])
  end
end
