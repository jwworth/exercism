defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """

  @commands ["wink", "double blink", "close your eyes", "jump"]

  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    reversed_bits =
      to_binary(code)
      |> String.reverse()

    result =
      reversed_bits
      |> String.codepoints()
      |> Enum.with_index()
      |> Enum.flat_map(fn {num, index} ->
        case num do
          "1" -> [Enum.at(@commands, index)]
          _ -> []
        end
      end)
      |> Enum.reject(&is_nil/1)

    leader = String.slice(reversed_bits, 4..4)

    if byte_size(leader) > 0 do
      result = Enum.reverse(result)
    end

    result
  end

  defp to_binary(code) do
    Integer.to_string(code, 2)
  end
end
