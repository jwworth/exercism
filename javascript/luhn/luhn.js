export const valid = input => {
  const trimmed = input.replace(/ /g, '');
  if (trimmed.length === 1) {
    return false;
  }

  const sum = trimmed
    .split('')
    .reverse()
    .map((item, index) => {
      let newValue = Number(item);
      const evenIndex = index % 2 === 1;

      if (evenIndex) {
        newValue = newValue * 2;

        if (newValue > 9) {
          newValue = newValue - 9;
        }
      }

      return newValue;
    })
    .reduce((acc, cur) => acc + cur);

  return sum % 10 === 0;
};
