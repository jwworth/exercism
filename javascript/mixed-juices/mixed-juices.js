export function timeToMixJuice(name) {
  switch (name) {
    case 'Pure Strawberry Joy':
      return 0.5;
    case 'Energizer':
    case 'Green Garden':
      return 1.5;
    case 'Tropical Island':
      return 3;
    case 'All or Nothing':
      return 5;
    default:
      return 2.5;
  }
}

const SLICEMAP = {small: 6, medium: 8, large: 10};

export function limesToCut(wedgesNeeded, limes) {
  let limesCut = 0;
  let result = 0;

  while (result < wedgesNeeded && limes[limesCut]) {
    const lime = limes[limesCut];
    const slices = SLICEMAP[lime];
    result += slices;
    limesCut++;
  }

  return limesCut;
}

export function remainingOrders(timeLeft, orders) {
  while (timeLeft > 0) {
    timeLeft -= timeToMixJuice(orders[0]);
    orders.shift();
  }

  return orders;
}
