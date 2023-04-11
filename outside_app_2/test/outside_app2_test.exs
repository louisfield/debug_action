defmodule OutsideApp2Test do
  use ExUnit.Case
  doctest OutsideApp2

  test "greets the world" do
    assert OutsideApp2.hello() == :world
  end
end
