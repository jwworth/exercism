export function totalBirdCount(birdsPerDay) {
  let count = 0;

  for (let i = 0; i < birdsPerDay.length; i++) {
    count += birdsPerDay[i];
  }

  return count;
}

export function birdsInWeek(birdsPerDay, week) {
  const startDay = (week - 1) * 7;
  const endDay = startDay + 7;
  let count = 0;

  for (let i = startDay; i < endDay; i++) {
    count += birdsPerDay[i];
  }

  return count;
}

export function fixBirdCountLog(birdsPerDay) {
  for (let i = 0; i < birdsPerDay.length; i += 2) {
    birdsPerDay[i] += 1;
  }
}
