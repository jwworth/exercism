export const colorCode = code => {
  let i;
  for (i = 0; i < COLORS.length; i++) {
    if (COLORS[i] === code) {
      break;
    }
  }
  return i;
};

export const COLORS = [
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
