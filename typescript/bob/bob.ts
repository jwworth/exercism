class Bob {
  hey(phrase: string): string {
    const input = phrase.trim();

    if (/^[A-Z\s]*\?$/.test(input)) {
      return "Calm down, I know what I'm doing!";
    } else if (input.slice(-1) === '?') {
      return 'Sure.';
    } else if (input.trim() === '') {
      return 'Fine. Be that way!';
    } else if (/^[\d\s,]*$/.test(input)) {
      return 'Whatever.';
    } else if (input.toUpperCase() === input) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  }
}

export default Bob;
