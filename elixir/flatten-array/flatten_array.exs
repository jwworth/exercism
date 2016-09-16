defmodule FlattenArray do
  @doc """
    Accept a list and return the list flattened without nil values.

    ## Examples

      iex> FlattenArray.flatten([1, [2], 3, nil])
      [1,2,3]

      iex> FlattenArray.flatten([nil, nil])
      []

  """

  @spec flatten(list) :: list
  def flatten(list, flattened \\ [])
  def flatten([h|t], flattened) when is_list(h) do
    flatten(h, flatten(t, flattened))
  end

  def flatten([nil|t], flattened) do
    flatten(t, flattened)
  end

  def flatten([h|t], flattened) do
    [h|flatten(t, flattened)]
  end

  def flatten([], flattened) do
    flattened
  end
end
