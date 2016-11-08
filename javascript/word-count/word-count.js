'use strict';

function Words () {}

Words.prototype.count = function (string) {

  var result = {};
  var words = string.match(/\S+/g);

  words.forEach(function (word) {
    var prepped_word = word.toLowerCase();
    result[prepped_word] = result.hasOwnProperty(prepped_word) ? result[prepped_word] + 1 : 1;
  });

  return result;
};

module.exports = Words;
