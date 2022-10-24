const resistanceMap: Record<string, string> = {
  black: "0",
  brown: "1",
  red: "2",
  orange: "3",
  yellow: "4",
  green: "5",
  blue: "6",
  violet: "7",
  grey: "8",
  white: "9"
};

export const decodedValue = ([first, last]: Array<string>) => {
  const value = [first, last].reduce(
    (prev, color) => prev + resistanceMap[color],
    ""
  );

  return Number(value);
};
