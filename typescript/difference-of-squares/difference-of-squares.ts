class Squares {
  input: number[];
  squareOfSum: number;
  sumOfSquares: number;
  difference: number;

  constructor(input: number) {
    this.input = [...Array(input + 1).keys()];
    this.squareOfSum = this.input.reduce((acc, num) => acc + num, 0) ** 2;
    this.sumOfSquares = this.input.reduce((acc, num) => acc + num ** 2, 0);
    this.difference = this.squareOfSum - this.sumOfSquares;
  }
}

export default Squares;
