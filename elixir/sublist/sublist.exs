defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a == b -> :equal
      sublist?(a, b) -> :superlist
      sublist?(b, a) -> :sublist
      true -> :unequal
    end
  end

  defp sublist?(a, b) do
    sublist_size = Enum.count(b)

    cond do
      sublist_size > Enum.count(a) -> false
      Enum.take(a, sublist_size) === b -> true

      true ->
        [_|t] = a
        sublist?(t, b)
    end
  end
end
