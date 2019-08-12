class RobotName {
  letterPrefixes: string[];
  letterCounter: number;
  numberCounter: number;
  name: string;

  constructor() {
    this.letterPrefixes = this.generateRandomPrefixes();
    this.letterCounter = 0;
    this.numberCounter = 0;
    this.name = this.generateName();
  }

  generateRandomPrefixes(): string[] {
    return 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      .split('')
      .map(letter => letter + letter)
      .sort(() => Math.random() - 0.5);
  }

  leftPad(numberCounter: number): string {
    return ('00' + numberCounter).slice(-3);
  }

  resetName(): void {
    this.name = this.generateName();
  }

  generateName(): string {
    if (this.numberCounter === 1000) {
      this.numberCounter = 0;
      this.letterCounter++;
    }

    const name: string =
      this.letterPrefixes[this.letterCounter] +
      this.leftPad(this.numberCounter);

    this.numberCounter = this.numberCounter + 2;

    return name;
  }
}

export default RobotName;
