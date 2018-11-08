defmodule TweetThangTest do
  use ExUnit.Case
  doctest TweetThang

  test "greets the world" do
    assert TweetThang.hello() == :world
  end
end
