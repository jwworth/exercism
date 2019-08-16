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
    } else if (this.isIsosoceles(this.sides)) {
      return 'isosceles';
    } else {
      return 'scalene';
    }
  }

  isEquilateral([sideOne, _sideTwo, sideThree]: number[]): boolean {
    return sideOne === sideThree;
  }

  isIsosoceles([sideOne, sideTwo, sideThree]: number[]): boolean {
    return sideOne === sideTwo || sideTwo === sideThree;
  }

  isIllegal([sideOne, sideTwo, sideThree]: number[]): boolean {
    const noSize = sideOne + sideTwo + sideThree === 0;

    const negativeSize = [sideOne, sideTwo, sideOne].some(
      side => Math.sign(side) === -1
    );

    const inEqual = !(sideOne + sideTwo >= sideThree);

    return noSize || negativeSize || inEqual;
  }
}
