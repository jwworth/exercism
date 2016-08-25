defmodule Scrabble do

  @values [
    a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m:
    3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
  ]

  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t) :: non_neg_integer
  def score(word) do
    if String.strip(word) == "" do
      0
    else
      do_score(String.graphemes(word))
    end
  end

  defp do_score(list, count \\ 0)
  defp do_score([h|t], count) do
    key = String.to_atom(String.downcase(h))
    do_score(t, count + @values[key])
  end

  defp do_score([], count), do: count
end
