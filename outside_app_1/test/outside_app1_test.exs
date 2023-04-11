defmodule OutsideApp1Test do
  use ExUnit.Case
  doctest OutsideApp1

  test "greets the world" do
    assert OutsideApp1.hello() == :world
  end
end
