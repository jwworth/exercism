interface Input {
  [key: string]: string[];
}

interface Result {
  [key: string]: number;
}

const transform = (input: Input): Result => {
  const result: Result = {};

  Object.entries(input).forEach(([num, arr]: [string, string[]]) =>
    arr.forEach(
      (letter: string) => (result[letter.toLowerCase()] = Number(num))
    )
  );

  return result;
};

export default transform;
