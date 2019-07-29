class Matrix {
  rows: number[][];
  columns: number[][];

  constructor(input: string) {
    this.rows = input
      .split(/\n/)
      .map(row => row.split(/\s/).map(number => Number(number)));

    this.columns = this.rows[0].map((_, index) =>
      this.rows.map(row => row[index])
    );
  }
}

export default Matrix;
