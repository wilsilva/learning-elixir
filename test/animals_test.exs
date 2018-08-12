defmodule AnimalsTest do
  use ExUnit.Case
  doctest Animals

  test "randomise" do
    zoo = Animals.create_zoo()
    refute zoo == Animals.randomise(zoo)
  end

  test "get" do
    animals = Animals.get(2)
    assert length(animals) == 2
  end
end
