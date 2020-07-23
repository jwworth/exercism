export class HighScores {
  constructor(scores) {
    this.scores = scores;
  }

  get latest() {
    return this.scores[this.scores.length - 1];
  }

  get personalBest() {
    let max = this.scores[0];

    this.scores.forEach(score => {
      if (score > max) {
        max = score;
      }
    });

    return max;
  }

  get personalTopThree() {
    const sortedScores = this.bubbleSort(this.scores);
    const topThree = sortedScores.slice(-3);

    return this.swap(topThree);
  }

  bubbleSort(list) {
    let done = false;

    while (!done) {
      done = true;
      list.forEach((item, index) => {
        let next = list[index + 1];
        if (item > next) {
          done = false;
          [list[index + 1], list[index]] = [item, next];
        }
      });
    }

    return list;
  }

  swap(list) {
    let start = 0;
    let end = list.length - 1;

    while (start < end) {
      [list[start], list[end]] = [list[end], list[start]];

      start++;
      end--;
    }

    return list;
  }
}
