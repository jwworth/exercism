defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    String.split(string)
    |> Enum.map(fn(n) ->
      String.upcase(String.first(n)) <> String.slice(n, 1, String.length(n))
    end)
    |> Enum.join
    |> String.replace(~r/[^A-Z]/, "")
  end
end
