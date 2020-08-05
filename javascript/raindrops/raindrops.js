const divisibleBy = (number, divisor) => number % divisor === 0;

export const convert = dropCount => {
  let conversion = '';

  const divisibleByThree = divisibleBy(dropCount, 3);
  const divisibleByFive = divisibleBy(dropCount, 5);
  const divisibleBySeven = divisibleBy(dropCount, 7);

  if (divisibleByThree) {
    conversion += 'Pling';
  }

  if (divisibleByFive) {
    conversion += 'Plang';
  }

  if (divisibleBySeven) {
    conversion += 'Plong';
  }

  if (!divisibleByThree && !divisibleByFive && !divisibleBySeven) {
    conversion = String(dropCount);
  }

  return conversion;
};
