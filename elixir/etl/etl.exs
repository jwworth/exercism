defmodule ETL do
  @doc """
  Transform an index into an inverted index.

  ## Examples

  iex> ETL.transform(%{"a" => ["ABILITY", "AARDVARK"], "b" => ["BALLAST", "BEAUTY"]})
  %{"ability" => "a", "aardvark" => "a", "ballast" => "b", "beauty" =>"b"}
  """
  @spec transform(map) :: map
  def transform(input) do
    input
      |> Enum.map(fn({key, value}) ->
        Enum.map(value, fn(value) -> {String.downcase(value), key}
        end)
      end)
      |> List.flatten
      |> Enum.into(%{})
  end
end
