const hoursInDay = 8;
export const dayRate = (hourlyRate) => {
  return hoursInDay * hourlyRate;
};

export const daysInBudget = (budget, hourlyRate) => {
  const costPerDay = dayRate(hourlyRate);
  return Math.floor(budget / costPerDay);
};

export const daysInMonth = 22;
export const priceWithMonthlyDiscount = (
  hourlyRate,
  numberOfDays,
  monthlyDiscount,
) => {
  const fullMonths = Math.floor(numberOfDays / daysInMonth);
  const fullMonthPrice = dayRate(hourlyRate) * daysInMonth * fullMonths;
  const fullMonthPriceDiscounted = fullMonthPrice * (1 - monthlyDiscount);

  const extraDays = Math.ceil(numberOfDays % daysInMonth);
  const dayPrice = dayRate(hourlyRate) * extraDays;

  return Math.ceil(fullMonthPriceDiscounted + dayPrice);
};
