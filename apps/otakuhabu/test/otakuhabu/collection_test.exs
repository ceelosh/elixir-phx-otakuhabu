defmodule Otakuhabu.CollectionTest do
  use Otakuhabu.DataCase

  alias Otakuhabu.Collection

  describe "animes" do
    alias Otakuhabu.Collection.Anime

    import Otakuhabu.CollectionFixtures

    @invalid_attrs %{premiered_in: nil, source: nil, status: nil, title: nil, total_seasons: nil}

    test "list_animes/0 returns all animes" do
      anime = anime_fixture()
      assert Collection.list_animes() == [anime]
    end

    test "get_anime!/1 returns the anime with given id" do
      anime = anime_fixture()
      assert Collection.get_anime!(anime.id) == anime
    end

    test "create_anime/1 with valid data creates a anime" do
      valid_attrs = %{premiered_in: ~D[2022-12-28], source: "some source", status: "some status", title: "some title", total_seasons: 42}

      assert {:ok, %Anime{} = anime} = Collection.create_anime(valid_attrs)
      assert anime.premiered_in == ~D[2022-12-28]
      assert anime.source == "some source"
      assert anime.status == "some status"
      assert anime.title == "some title"
      assert anime.total_seasons == 42
    end

    test "create_anime/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Collection.create_anime(@invalid_attrs)
    end

    test "update_anime/2 with valid data updates the anime" do
      anime = anime_fixture()
      update_attrs = %{premiered_in: ~D[2022-12-29], source: "some updated source", status: "some updated status", title: "some updated title", total_seasons: 43}

      assert {:ok, %Anime{} = anime} = Collection.update_anime(anime, update_attrs)
      assert anime.premiered_in == ~D[2022-12-29]
      assert anime.source == "some updated source"
      assert anime.status == "some updated status"
      assert anime.title == "some updated title"
      assert anime.total_seasons == 43
    end

    test "update_anime/2 with invalid data returns error changeset" do
      anime = anime_fixture()
      assert {:error, %Ecto.Changeset{}} = Collection.update_anime(anime, @invalid_attrs)
      assert anime == Collection.get_anime!(anime.id)
    end

    test "delete_anime/1 deletes the anime" do
      anime = anime_fixture()
      assert {:ok, %Anime{}} = Collection.delete_anime(anime)
      assert_raise Ecto.NoResultsError, fn -> Collection.get_anime!(anime.id) end
    end

    test "change_anime/1 returns a anime changeset" do
      anime = anime_fixture()
      assert %Ecto.Changeset{} = Collection.change_anime(anime)
    end
  end
end
