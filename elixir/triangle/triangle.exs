defmodule Triangle do
  @type kind :: :equilateral | :isosceles | :scalene

  @doc """
  Return the kind of triangle of a triangle with 'a', 'b' and 'c' as lengths.
  """
  @spec kind(number, number, number) :: { :ok, kind } | { :error, String.t }
  def kind(a, b, c) do
    [x, y, z] = Enum.sort([a, b, c])
    cond do
      Enum.any?([x, y, z], &(&1 <= 0)) -> {:error, "all side lengths must be positive"}
      x + y <= z                       -> {:error, "side lengths violate triangle inequality"}
      x == y and x == z                -> {:ok, :equilateral}
      x == y or x == z or y == z       -> {:ok, :isosceles}
      true                             -> {:ok, :scalene}
    end
  end
end
