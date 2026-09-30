const TEENS = ['11', '12', '13', '14', '15', '16', '17', '18', '19'];

export const format = (name, rank) => {
  let indicator = 'th';

  let lastTwo = rank.toString().slice(-2);
  let last = rank.toString().slice(-1);

  if (TEENS.includes(lastTwo)) {
    indicator = 'th';
  } else if (last === '1') {
    indicator = 'st';
  } else if (last === '2') {
    indicator = 'nd';
  } else if (last === '3') {
    indicator = 'rd';
  }

  return `${name}, you are the ${rank}${indicator} customer we serve today. Thank you!`;
};
