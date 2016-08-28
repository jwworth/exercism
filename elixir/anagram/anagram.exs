defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    Enum.filter(candidates, fn(candidate) -> anagram?(base, candidate) end)
  end

  defp anagram?(base, candidate) do
    base_word = String.downcase(base)
    candidate_word = String.downcase(candidate)

    if base_word == candidate_word do
      false
    else
      base_letters = base_word
        |> String.graphemes
        |> Enum.sort

      candidate_letters = candidate_word
        |> String.graphemes
        |> Enum.sort

    base_letters == candidate_letters
    end
  end
end
