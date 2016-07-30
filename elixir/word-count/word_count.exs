defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    String.replace(sentence, "_", " ")
    |> String.downcase
    |> String.replace(~r/[^\w\s-ö]/, "")
    |> String.split
    |> Enum.reduce(%{}, fn(word, acc) -> Map.update(acc, word, 1, fn(n) -> n + 1 end) end)
  end
end
