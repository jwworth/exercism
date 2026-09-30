export const format = (name, rank) => {
  let indicator = 'th';

  let lastTwo = rank % 100;
  let last = rank % 10;

  if (lastTwo > 10 && lastTwo < 20) {
    indicator = 'th';
  } else if (last === 1) {
    indicator = 'st';
  } else if (last === 2) {
    indicator = 'nd';
  } else if (last === 3) {
    indicator = 'rd';
  }

  return `${name}, you are the ${rank}${indicator} customer we serve today. Thank you!`;
};
