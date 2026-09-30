export const needsLicense = (kind) => {
  return ['car', 'truck'].includes(kind);
};

export const chooseVehicle = (first, second) => {
  const choice = [first, second].sort().shift();

  return `${choice} is clearly the better choice.`;
};

export const calculateResellPrice = (originalPrice, age) => {
  let reduction = 0.7;

  if (age < 3) {
    reduction = 0.8;
  } else if (age > 10) {
    reduction = 0.5;
  }

  return originalPrice * reduction;
};
