defmodule FirstProjectElixirTest do
  use ExUnit.Case
  doctest FirstProjectElixir

  test "greets the world" do
    assert FirstProjectElixir.hello() == :world
  end
end
