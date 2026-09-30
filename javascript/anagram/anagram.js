export const findAnagrams = (source, comparisons) => {
  const sortLetters = (word) => word.split('').sort().join('');

  const normalizedSource = source.toLowerCase();
  const sortedSource = sortLetters(normalizedSource);

  return comparisons.filter((word) => {
    const normalizedWord = word.toLowerCase();

    return (
      normalizedWord !== normalizedSource &&
      sortLetters(normalizedWord) === sortedSource
    );
  });
};
