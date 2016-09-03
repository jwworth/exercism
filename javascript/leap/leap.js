function Year(year) {
  this.year = year;
}

function rem(year, divisor) {
  return year % divisor == 0;
}

Year.prototype.isLeap = function() {
  if (rem(this.year, 4) && (!rem(this.year, 100) || rem(this.year, 400))) {
    return true;
  } else {
  return false;
  }
};

module.exports = Year;
