const grainsOnPosition = max => {
  const result = [1];
  const positions = [...Array(max - 1).keys()];

  positions.forEach((_, index) => {
    result.push(result[BigInt(index)] * 2);
  });

  return result;
};

export const square = number => {
  if (number < 1 || number > 64) {
    throw new Error('square must be between 1 and 64');
  }

  return BigInt(grainsOnPosition(number)[number - 1]);
};

export const total = () => {
  return BigInt(
    grainsOnPosition(64).reduce((acc, cur) => BigInt(acc) + BigInt(cur))
  );
};
