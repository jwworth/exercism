defmodule RNATranscription do
  @swaps [ 'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U' ]

  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    String.graphemes(to_string(dna))
      |> Enum.map(&(@swaps[String.to_atom(&1)]))
      |> Enum.join
      |> to_char_list
  end
end
