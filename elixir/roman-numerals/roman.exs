defmodule Roman do
  @singles   [ "", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX" ]
  @tens      [ "", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC" ]
  @hundreds  [ "", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM" ]
  @thousands [ "", "M", "MM", "MMM" ]

  @doc """
  Convert the number to a roman number.
  """
  @spec numerals(pos_integer) :: String.t
  def numerals(number) do
    rev_digits = Integer.digits(number)
    |> Enum.reverse

    result = Enum.at(@singles, Enum.at(rev_digits, 0))
    digits_length = length(rev_digits)

    if digits_length > 1, do: result = Enum.at(@tens, Enum.at(rev_digits, 1)) <> result
    if digits_length > 2, do: result = Enum.at(@hundreds, Enum.at(rev_digits, 2)) <> result
    if digits_length > 3, do: result = Enum.at(@thousands, Enum.at(rev_digits, 3)) <> result

    result
  end
end
