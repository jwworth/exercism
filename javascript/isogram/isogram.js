'use strict';

function Isogram(string) {
  this.string = string;
}

Isogram.prototype.isIsogram = function () {
  var result = {};
  var letters = this.string.toLowerCase().replace(/[^a-z|é]/g, '').split('');

  letters.forEach(function (letter) {
    result[letter] = 1;
  });

  return Object.keys(result).length == letters.length;
};

module.exports = Isogram;
