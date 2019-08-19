class Isogram {
  static isIsogram(input: string): boolean {
    const letters = input.toLowerCase().replace(/[^a-z]/, '');
    const letterSet = new Set(letters);

    return letters.length === letterSet.size;
  }
}

export default Isogram;
