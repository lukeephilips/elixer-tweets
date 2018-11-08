defmodule TweetThang.Tweet do

  def send(string) do
    ExTwitter.configure(:process, [
      consumer_key: System.get_env("TWIT_API_KEY"),
      consumer_secret: System.get_env("TWIT_API_SECRET"),
      access_token: System.get_env("TWIT_TOKEN"),
      access_token_secret: System.get_env("TWIT_TOKEN_SECRET")
    ])
    ExTwitter.update(string)
  end
  def send_random(file) do
    TweetThang.FileReader.get_strings_to_tweet(file)
    |> send
  end
end
