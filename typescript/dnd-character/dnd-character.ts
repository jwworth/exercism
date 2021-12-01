export class DnDCharacter {
  charisma: number;
  constitution: number;
  dexterity: number;
  hitpoints: number;
  intelligence: number;
  strength: number;
  wisdom: number;

  constructor() {
    this.charisma = DnDCharacter.generateAbilityScore();
    this.constitution = DnDCharacter.generateAbilityScore();
    this.dexterity = DnDCharacter.generateAbilityScore();
    this.intelligence = DnDCharacter.generateAbilityScore();
    this.strength = DnDCharacter.generateAbilityScore();
    this.wisdom = DnDCharacter.generateAbilityScore();
    this.hitpoints = 10 + DnDCharacter.getModifierFor(this.constitution);
  }

  public static generateAbilityScore(): number {
    const rolls = [this.roll(), this.roll(), this.roll(), this.roll()];
    rolls.sort().shift();

    return rolls.reduce(this.sum);
  }

  public static getModifierFor(abilityValue: number): number {
    return Math.floor((abilityValue - 10) / 2);
  }

  static roll(): number {
    return Math.ceil(Math.random() * 6);
  }

  static sum(first: number, next: number) {
    return first + next;
  }
}
