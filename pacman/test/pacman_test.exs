defmodule PacmanTest do
  use ExUnit.Case
  doctest Pacman

  test "greets the world" do
    assert Pacman.hello() == :world
  end
end
