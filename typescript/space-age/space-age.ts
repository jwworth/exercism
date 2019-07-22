class SpaceAge {
  seconds: number;
  earthPeriod: number;

  constructor(seconds: number) {
    this.seconds = seconds;
    this.earthPeriod = seconds / 31557600;
  }

  truncate(seconds: number): number {
    return parseFloat(seconds.toFixed(2));
  }

  onEarth(): number {
    return this.truncate(this.earthPeriod);
  }

  onMercury(): number {
    return this.truncate(this.earthPeriod / 0.2408467);
  }

  onVenus(): number {
    return this.truncate(this.earthPeriod / 0.61519726);
  }

  onMars(): number {
    return this.truncate(this.earthPeriod / 1.8808158);
  }

  onJupiter(): number {
    return this.truncate(this.earthPeriod / 11.862615);
  }

  onSaturn(): number {
    return this.truncate(this.earthPeriod / 29.447498);
  }

  onUranus(): number {
    return this.truncate(this.earthPeriod / 84.016846);
  }

  onNeptune(): number {
    return this.truncate(this.earthPeriod / 164.79132);
  }
}

export default SpaceAge;
