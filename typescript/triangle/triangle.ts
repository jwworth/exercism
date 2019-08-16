export default class Triangle {
  sides: number[];

  constructor(...sides: number[]) {
    this.sides = sides.sort((leftSide, rightSide) => leftSide - rightSide);
  }

  kind() {
    if (this.isIllegal(this.sides)) {
      throw new Error();
    }

    if (this.isEquilateral(this.sides)) {
      return 'equilateral';
    } else if (this.isIsosceles(this.sides)) {
      return 'isosceles';
    } else {
      return 'scalene';
    }
  }

  isEquilateral([sideOne, _sideTwo, sideThree]: number[]): boolean {
    return sideOne === sideThree;
  }

  isIsosceles([sideOne, sideTwo, sideThree]: number[]): boolean {
    return sideOne === sideTwo || sideTwo === sideThree;
  }

  isIllegal([sideOne, sideTwo, sideThree]: number[]): boolean {
    const negativeSize = sideOne <= 0;
    const inEqual = sideOne + sideTwo <= sideThree;

    return negativeSize || inEqual;
  }
}
