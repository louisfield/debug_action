defmodule InsideDebugAppTest do
  use ExUnit.Case
  doctest InsideDebugApp

  test "greets the world" do
    assert InsideDebugApp.hello() == :world
  end
end
