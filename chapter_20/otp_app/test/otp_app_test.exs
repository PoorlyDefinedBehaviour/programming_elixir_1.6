defmodule OtpAppTest do
  use ExUnit.Case
  doctest OtpApp

  test "greets the world" do
    assert OtpApp.hello() == :world
  end
end
