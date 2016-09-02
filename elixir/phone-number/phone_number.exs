defmodule Phone do
  @doc """
  Remove formatting from a phone number.

  Returns "0000000000" if phone number is not valid
  (10 digits or "1" followed by 10 digits)

  ## Examples

  iex> Phone.number("123-456-7890")
  "1234567890"

  iex> Phone.number("+1 (303) 555-1212")
  "3035551212"

  iex> Phone.number("867.5309")
  "0000000000"
  """
  @spec number(String.t) :: String.t
  def number(raw) do
    cleaned = clean(raw)

    if valid?(cleaned) do
      cleaned
    else
      "0000000000"
    end
  end

  defp clean(string) do
    result = String.replace(string, ~r/[^0-9a-z]/, "")

    if String.length(result) == 11 && String.first(result) == "1" do
      result = String.slice(result, 1, String.length(result))
    end

    result
  end

  defp valid?(string) do
    cond do
      String.match?(string, ~r/[a-z]/) -> false
      String.length(string) != 10 -> false
      true -> true
    end
  end

  @doc """
  Extract the area code from a phone number

  Returns the first three digits from a phone number,
  ignoring long distance indicator

  ## Examples

  iex> Phone.area_code("123-456-7890")
  "123"

  iex> Phone.area_code("+1 (303) 555-1212")
  "303"

  iex> Phone.area_code("867.5309")
  "000"
  """
  @spec area_code(String.t) :: String.t
  def area_code(raw) do
    String.slice(clean(raw), 0, 3)
  end

  @doc """
  Pretty print a phone number

  Wraps the area code in parentheses and separates
  exchange and subscriber number with a dash.

  ## Examples

  iex> Phone.pretty("123-456-7890")
  "(123) 456-7890"

  iex> Phone.pretty("+1 (303) 555-1212")
  "(303) 555-1212"

  iex> Phone.pretty("867.5309")
  "(000) 000-0000"
  """
  @spec pretty(String.t) :: String.t
  def pretty(raw) do
    String.graphemes(clean(raw))
      |> List.insert_at(0, "(")
      |> List.insert_at(4, ")")
      |> List.insert_at(5, " ")
      |> List.insert_at(9, "-")
      |> Enum.join
  end
end
