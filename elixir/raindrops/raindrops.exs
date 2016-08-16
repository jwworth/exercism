defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    output = ""
    if factor?(number, 3), do: output = output <> "Pling"
    if factor?(number, 5), do: output = output <> "Plang"
    if factor?(number, 7), do: output = output <> "Plong"

    if String.length(output) > 0 do
      output
    else
      to_string(number)
    end
  end

  defp factor?(number, factor) do
    rem(number, factor) == 0
  end
end
