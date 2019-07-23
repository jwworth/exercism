class Bob {
  hey(input: string): string {
    const phrase = input.trim();

    const isCaps = /[A-Z]/.test(phrase) && !/[a-z]/.test(phrase);
    const isEmpty = !phrase;
    const isQuestion = phrase.endsWith('?');

    if (isCaps && isQuestion) {
      return "Calm down, I know what I'm doing!";
    } else if (isQuestion) {
      return 'Sure.';
    } else if (isEmpty) {
      return 'Fine. Be that way!';
    } else if (isCaps) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  }
}

export default Bob;
