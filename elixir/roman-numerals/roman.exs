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
    digits = Integer.digits(number)
    digits_length = length(digits)

    result = Enum.at(@singles, Enum.at(digits, -1))
    if digits_length > 1, do: result = Enum.at(@tens, Enum.at(digits, -2)) <> result
    if digits_length > 2, do: result = Enum.at(@hundreds, Enum.at(digits, -3)) <> result
    if digits_length > 3, do: result = Enum.at(@thousands, Enum.at(digits, -4)) <> result

    result
  end
end
