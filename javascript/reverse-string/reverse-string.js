export const reverseString = input => {
  const letters = input.split('');
  let start_index = 0;
  let end_index = letters.length - 1;

  while (start_index < end_index) {
    const start = letters[start_index];
    const end = letters[end_index];

    letters[end_index] = start;
    letters[start_index] = end;

    start_index++;
    end_index--;
  }

  return letters.join('');
};
