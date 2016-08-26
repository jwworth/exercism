defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, list) do
    Enum.filter((limit - 1)..2, fn(n) ->
      Enum.any?(list, fn(l) -> rem(n, l) == 0 end)
    end)
    |> Enum.sum
  end
end
