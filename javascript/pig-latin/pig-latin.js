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

  let translated = word;
  if (twoLetterVowels.includes(word.slice(0, 2))) {
    return `${translated}ay`;
  }

  if (threeLetterConsonants.includes(word.slice(0, 3))) {
    translated = rotate(word, 3);
  } else if (twoLetterConsonants.includes(word.slice(0, 2))) {
    translated = rotate(word, 2);
  } else if (consonants.includes(word[0])) {
    translated = rotate(word, 1);
  }

  return `${translated}ay`;
};
