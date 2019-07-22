class SpaceAge {
  seconds: number;

  constructor(seconds: number) {
    this.seconds = seconds;
  }

  truncate(seconds: number): number {
    return parseFloat(seconds.toFixed(2));
  }

  convertToEarth(): number {
    return this.seconds / 31557600;
  }

  onEarth(): number {
    return this.truncate(this.convertToEarth());
  }

  onMercury(): number {
    return this.truncate(this.convertToEarth() / 0.2408467);
  }

  onVenus(): number {
    return this.truncate(this.convertToEarth() / 0.61519726);
  }

  onMars(): number {
    return this.truncate(this.convertToEarth() / 1.8808158);
  }

  onJupiter(): number {
    return this.truncate(this.convertToEarth() / 11.862615);
  }

  onSaturn(): number {
    return this.truncate(this.convertToEarth() / 29.447498);
  }

  onUranus(): number {
    return this.truncate(this.convertToEarth() / 84.016846);
  }

  onNeptune(): number {
    return this.truncate(this.convertToEarth() / 164.79132);
  }
}

export default SpaceAge;
