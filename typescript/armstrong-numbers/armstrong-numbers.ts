class ArmstrongNumbers {
  static isArmstrongNumber(input: number): boolean {
    const numbers = String(input)
      .split('')
      .map(num => Number(num));

    return (
      input ===
      numbers.reduce((acc, cur) => acc + Math.pow(cur, numbers.length), 0)
    );
  }
}

export default ArmstrongNumbers;
