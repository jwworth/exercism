const sumFactors = number =>
  [...Array(number).keys()].reduce(
    (acc, potentialFactor) =>
      acc + (number % potentialFactor === 0 ? potentialFactor : 0)
  );

export const classify = number => {
  if (number < 1) {
    throw new Error('Classification is only possible for natural numbers.');
  }

  const factorSum = sumFactors(number);
  let assessment;

  if (factorSum === number) {
    assessment = 'perfect';
  } else if (factorSum < number) {
    assessment = 'deficient';
  } else {
    assessment = 'abundant';
  }

  return assessment;
};
