defmodule Bob do
  def hey(input) do
    cond do
      String.last(input) == "?" -> "Sure."
      String.strip(input) == "" -> "Fine. Be that way!"
      String.match?(input, ~r/^[\d\s,]*$/) -> "Whatever."
      String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
