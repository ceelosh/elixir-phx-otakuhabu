defmodule Abilities.Search do
  @moduledoc """
  Documentation for `Abilities.Search`
  """

  def execute(url) do
    HTTPoison.get(url)
  end
end
