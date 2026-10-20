export function timeToMixJuice(name) {
  let result = 2.5;
  switch (name) {
    case 'Pure Strawberry Joy':
      result = 0.5;
      break;
    case 'Energizer':
    case 'Green Garden':
      result = 1.5;
      break;
    case 'Tropical Island':
      result = 3;
      break;
    case 'All or Nothing':
      result = 5;
      break;
  }

  return result;
}

const SLICEMAP = {small: 6, medium: 8, large: 10};

export function limesToCut(wedgesNeeded, limes) {
  let index = 0;
  let result = 0;

  while (result < wedgesNeeded && limes[index]) {
    const nextLime = limes[index];
    const nextAmount = SLICEMAP[nextLime];
    result += nextAmount;
    index++;
  }

  return index;
}

export function remainingOrders(timeLeft, orders) {
  let timeUsed = 0;
  let dupes = [...orders];
  let index = 0;

  while (timeUsed < timeLeft) {
    timeUsed += timeToMixJuice(orders[index]);
    dupes.shift();
    index++;
  }

  return dupes;
}
