defmodule AllForOne do
  @moduledoc """
  Documentation for `AllForOne`.
  """

  alias Abilities.Search

  @doc """
  Search method.

  ## Examples

      iex> AllForOne.search(url)
      {:ok, %{}}

  """
  def search(url) do
    Search.execute(url)
  end
end
