class Squares {
  squareOfSum: number;
  sumOfSquares: number;
  difference: number;

  constructor(input: number) {
    const numbers: number[] = [...Array(input + 1).keys()];
    this.squareOfSum = numbers.reduce((acc, num) => acc + num, 0) ** 2;
    this.sumOfSquares = numbers.reduce((acc, num) => acc + num ** 2, 0);
    this.difference = this.squareOfSum - this.sumOfSquares;
  }
}

export default Squares;
