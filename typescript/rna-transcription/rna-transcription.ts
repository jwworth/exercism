class Transcriptor {
  toRna(strand: string): string {
    if (!!strand.match(/[^ACGT]/)) {
      throw new Error('Invalid input DNA.');
    }

    const keys: {
      [key: string]: string;
    } = {
      A: 'U',
      C: 'G',
      G: 'C',
      T: 'A',
    };

    return strand
      .split('')
      .map(key => keys[key])
      .join('');
  }
}

export default Transcriptor;
