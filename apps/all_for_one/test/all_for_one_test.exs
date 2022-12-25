defmodule AllForOneTest do
  use ExUnit.Case
  doctest AllForOne

  test "greets the world" do
    assert AllForOne.hello() == :world
  end
end
