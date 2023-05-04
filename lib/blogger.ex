defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blogger.hello()
      :world

  """
  def fetch_blog() do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")
  end

  def arrayToUpperCase(myarray) do
    Enum.map(myarray, &(String.upcase(&1)))
  end

  def arrayToUpperCase2(myarray) do
    Enum.map(myarray,  fn(el) ->
      if(el == "cow") do
        String.upcase(el)
      else
        el
      end
    end)
  end

  def arrayToUpperCase3(myarray) do
    Enum.with_index(myarray, fn el, dex ->
      if(dex == 0) do
        String.upcase(el)
      else
        el
      end
    end)
  end

end
