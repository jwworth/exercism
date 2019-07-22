class Pangram {
  input: string;

  constructor(input: string) {
    this.input = input.toLowerCase();
  }

  isPangram(): boolean {
    const letters = this.input.split(/[^a-z]|/).filter(Boolean);
    return new Set(letters).size === 26;
  }
}

export default Pangram;
