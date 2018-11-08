defmodule TweetThang do
  @moduledoc """
  Documentation for TweetThang.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TweetThang.hello()
      :world

  """
  def schedule_file(filepath) do
    TweetThang.FileReader.get_strings_to_tweet(filepath)
    |> TweetThang.TweetServer.tweet
  end
end
