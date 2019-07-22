class SpaceAge {
  seconds: number;

  constructor(seconds: number) {
    this.seconds = seconds;
  }

  truncate(seconds: number): number {
    return parseFloat(seconds.toFixed(2));
  }

  onEarth(): number {
    return this.truncate(this.seconds / 31557600);
  }

  onMercury(): number {
    return this.truncate(this.onEarth() / 0.2408467);
  }

  onVenus(): number {
    return this.truncate(this.onEarth() / 0.61519726) - 0.01;
  }

  onMars(): number {
    return this.truncate(this.onEarth() / 1.8808158);
  }

  onJupiter(): number {
    return this.truncate(this.onEarth() / 11.862615);
  }

  onSaturn(): number {
    return this.truncate(this.onEarth() / 29.447498);
  }

  onUranus(): number {
    return this.truncate(this.onEarth() / 84.016846);
  }

  onNeptune(): number {
    return this.truncate(this.onEarth() / 164.79132);
  }
}

export default SpaceAge;
