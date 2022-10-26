const colorMap = [
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

export const decodedResistorValue = ([first, second, zeros]: Array<string>): string => {
  const baseValue = `${colorMap.indexOf(first)}${colorMap.indexOf(second)}`

  let value = Number(baseValue) * 10 ** colorMap.indexOf(zeros)
  let unit = 'ohms'
  if(value >= 1000) {
    value /= 1000
    unit = `kilo${unit}`
  }

  return `${value} ${unit}`
};
