class RunLengthEncoding {
  static encode(input: string): string {
    const letters = input.split('');
    let encoded = '';
    let groupCount = 1;

    letters.forEach((letter, index) => {
      if (letter === letters[index + 1]) {
        groupCount++;
      } else {
        const character = `${groupCount > 1 ? groupCount : ''}${letter}`;
        encoded += character;
        groupCount = 1;
      }
    });

    return encoded;
  }

  static decode(input: string): string {
    const letters = input.split('');
    let decoded = '';
    let groupCount = '';

    letters.forEach(letter => {
      if (Number(letter)) {
        groupCount += letter;
      } else {
        const character =
          groupCount !== ''
            ? Array(Number(groupCount))
                .fill(letter)
                .join('')
            : letter;

        decoded += character;
        groupCount = '';
      }
    });

    return decoded;
  }
}

export default RunLengthEncoding;
