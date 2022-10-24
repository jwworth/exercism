const resistanceMap = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white"
];

export const decodedValue = ([first, last]: Array<string>) => {
  const value = [first, last].reduce(
    (prev, color) => prev + resistanceMap.indexOf(color),
    ""
  );

  return Number(value);
};
