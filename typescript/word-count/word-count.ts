class Words {
  count(sentence: string) {
    let result = new Map();

    sentence
      .toLowerCase()
      .trim()
      .split(/\s+/)
      .forEach(word => {
        const existingWord = result.get(word);

        if (existingWord) {
          result.set(word, existingWord + 1);
        } else {
          result.set(word, 1);
        }
      });

    return result;
  }
}

export default Words;
