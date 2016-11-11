'use strict';

var Anagram = function (comparator) {

  this.order = function (word) {
    return word.toLowerCase().split('').sort().join();
  };

  this.anagram = function (comparator, comparision) {
    var orderedComparator  = this.order(comparator);
    var orderedComparision = this.order(comparision);
    var notMatch           = comparator.toLowerCase() !== comparision.toLowerCase();

    return (orderedComparator === orderedComparision && notMatch);
  };

  this.matches = function (comparisions) {
    return [].concat(comparisions).filter(comparision => this.anagram(comparator, comparision));
  };
};

module.exports = Anagram;
