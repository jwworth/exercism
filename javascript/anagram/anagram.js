'use strict';

var Anagram = function (comparator) {

  this.anagram = function (comparator, comparision) {
    var orderedComparator  = comparator.toLowerCase().split('').sort().join();
    var orderedComparision = comparision.toLowerCase().split('').sort().join();
    var notMatch           = comparator.toLowerCase() != comparision.toLowerCase();

    return (orderedComparator == orderedComparision && notMatch);
  }

  this.matches = function (comparisions) {
    return [].concat(comparisions).filter(comparision => this.anagram(comparator, comparision));
  };
}

module.exports = Anagram;
