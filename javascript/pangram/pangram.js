'use strict';

var Pangram = function(sentence) {
  this.sentence = sentence;
};

Pangram.prototype.isPangram = function () {

  var letter_count = 26;
  var letters      = this.sentence.replace(/[^A-Za-z]/g, '').toLowerCase().split('');
  var result       = {};

  letters.forEach(function (letter) {
    result[letter] = 1;
  });

  return Object.keys(result).length === letter_count;
};


module.exports = Pangram;
