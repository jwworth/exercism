function Gigasecond(startDate) {
  this.startDate = startDate;

  this.date = function() {
    var gigasecondDate = new Date (this.startDate.getTime() + Math.pow(10, 12));
    return gigasecondDate;
  };
}

module.exports = Gigasecond;
