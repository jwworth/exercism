class Bob {
  hey(input: string): string {
    const phrase = input.trim();

    if (/^[A-Z\s]*\?$/.test(phrase)) {
      return "Calm down, I know what I'm doing!";
    } else if (phrase.endsWith('?')) {
      return 'Sure.';
    } else if (!phrase.trim()) {
      return 'Fine. Be that way!';
    } else if (/^[\d\s,]*$/.test(phrase)) {
      return 'Whatever.';
    } else if (phrase.toUpperCase() === phrase) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  }
}

export default Bob;
