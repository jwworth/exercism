const getHypotenuse = (x, y) => Math.sqrt(Math.abs(x) ** 2 + Math.abs(y) ** 2);

export const score = (x, y) => {
  let score = 0;
  const hypotenuse = getHypotenuse(x, y);

  if (hypotenuse <= 1) {
    score = 10;
  } else if (hypotenuse <= 5) {
    score = 5;
  } else if (hypotenuse <= 10) {
    score = 1;
  }

  return score;
};
