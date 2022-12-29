defmodule Otakuhabu.CollectionFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Otakuhabu.Collection` context.
  """

  @doc """
  Generate a anime.
  """
  def anime_fixture(attrs \\ %{}) do
    {:ok, anime} =
      attrs
      |> Enum.into(%{
        premiered_in: ~D[2022-12-28],
        source: "some source",
        status: "some status",
        title: "some title",
        total_seasons: 42
      })
      |> Otakuhabu.Collection.create_anime()

    anime
  end
end
