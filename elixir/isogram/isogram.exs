defmodule Isogram do
  @doc """
  Determines if a word or sentence is an isogram
  """
  @spec isogram?(String.t) :: boolean
  def isogram?(sentence) do
    stripped_letters = String.replace(sentence, ~r/[-\s]/, "")
    |> String.graphemes

    do_isogram?(stripped_letters)
  end

  def do_isogram?(sentence, examined \\ [], acc \\ 0)
  def do_isogram?([h|t], examined, acc) do
    if Enum.member?(examined, h), do: acc = acc + 1

    do_isogram?(t, examined ++ [h], acc)
  end

  def do_isogram?(_, _, 0), do: true
  def do_isogram?(_, _, _), do: false
end
