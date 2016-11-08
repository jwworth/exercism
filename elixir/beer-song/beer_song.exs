defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """

  def verse(1) do
    """
    No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end

  @spec verse(integer) :: String.t
  def verse(2) do
    """
    1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    """
  end

  def verse(number) do
    stepdown = number - 1
    stepdown_two = stepdown - 1
    """
    #{stepdown} bottles of beer on the wall, #{stepdown} bottles of beer.
Take one down and pass it around, #{stepdown_two} bottle#{if stepdown_two > 1, do: "s"} of beer on the wall.
    """
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t) :: String.t
  def lyrics(range \\ (100..1)) do
    Enum.map(range, &verse(&1))
    |> Enum.join("\n")
  end
end
