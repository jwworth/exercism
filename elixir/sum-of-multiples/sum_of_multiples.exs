defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, list) do
    2..limit - 1
      |> Enum.filter(fn(n) -> Enum.any?(list, &(rem(n, &1) == 0)) end)
      |> Enum.sum
  end
end
