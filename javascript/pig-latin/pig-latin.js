export const translate = (sentence) => {
  return sentence.split(' ').map(toPigLatin).join(' ');
};

const rotate = (word, position) => {
  return word.slice(position) + word.slice(0, position);
};

const toPigLatin = (word) => {
  const consonants = [...'bcdfghjklmnpqrstvwxyz'];

  const twoLetterVowels = ['yt', 'xr'];
  const threeLetterConsonants = ['thr', 'squ', 'sch'];
  const twoLetterConsonants = ['ch', 'rh', 'qu', 'th'];

  let rotation = 0;
  if (twoLetterVowels.includes(word.slice(0, 2))) {
    rotation = 0;
  } else if (threeLetterConsonants.includes(word.slice(0, 3))) {
    rotation = 3;
  } else if (twoLetterConsonants.includes(word.slice(0, 2))) {
    rotation = 2;
  } else if (consonants.includes(word[0])) {
    rotation = 1;
  }

  return `${rotate(word, rotation)}ay`;
};
