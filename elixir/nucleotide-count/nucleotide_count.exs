defmodule DNA do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> DNA.count('AATAA', ?A)
  4

  iex> DNA.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(char, nucleotide, count \\ 0)
  def count([h|t], nucleotide, count) do
    if h == nucleotide, do: count = count + 1
    count(t, nucleotide, count)
  end

  def count([], _, count) do
    count
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> DNA.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do

  end
end
