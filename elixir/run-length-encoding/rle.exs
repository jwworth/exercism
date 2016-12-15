defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t

  def encode(string) do
    Enum.chunk_by(String.graphemes(string), fn(l) -> l end)
    |> Enum.map(fn([h|_] = list) ->
      "#{length(list)}#{h}"
    end)
    |> Enum.join
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    String.split(string, ~r/()[A-Z]()/, on: [1,2], trim: true)
    |> Enum.chunk(2)
    |> Enum.map(fn([number|letter]) ->
      String.duplicate(List.to_string(letter), String.to_integer(number))
    end)
    |> Enum.join
  end
end
