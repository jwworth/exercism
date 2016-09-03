defmodule Prime do

  @doc """
  Generates the nth prime.
  """
  @spec nth(non_neg_integer) :: non_neg_integer
  def nth(0), do: raise ArgumentError
  def nth(count, acc \\ 2, list \\ [2])
  def nth(count, acc, list) when count == length(list) do
    List.last(list)
  end

  def nth(count, acc, list) do
    unless Enum.any?((2..acc - 1), &(rem(acc, &1) == 0)), do: list = list ++ [acc]
    nth(count, acc + 1, list)
  end
end
