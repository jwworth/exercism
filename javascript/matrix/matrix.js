export class Matrix {
  constructor(input) {
    this.input = input;
  }

  get rows() {
    return this.calculateRows();
  }

  get columns() {
    const rows = this.calculateRows();
    const columnHolder = [...Array(rows[0].length).keys()].map(_ => []);

    rows.map(row => row.map((cell, index) => columnHolder[index].push(cell)));

    return columnHolder;
  }

  calculateRows() {
    return this.input
      .split(/\n/)
      .map(row => row.split(/\s/).map(cell => Number(cell)));
  }
}
