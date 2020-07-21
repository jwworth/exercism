const colorCode = code => {
  let i;
  for (i = 0; i < COLORS.length; i++) {
    if (COLORS[i] === code) {
      break;
    }
  }
  return String(i);
};

const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
];

export const decodedValue = ([first, second]) => {
  return Number(colorCode(first) + colorCode(second));
};
