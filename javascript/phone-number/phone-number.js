'use strict';

var PhoneNumber = function(string) {

  this.number = function () {
    var numbers_only = string.replace(/[^0-9]/g, '');

    if(numbers_only.length === 11 && numbers_only[0] === '1') {
      return numbers_only.substr(1);
    } else if (numbers_only.length !== 10 ) {
      return '0000000000';
    } else {
      return numbers_only;
    }
  };

  this.areaCode = function () {
    return string.substr(0,3);
  };

  this.prefix = function () {
    return string.substr(3, 3);
  };

  this.lineNumber = function () {
    return string.slice(6);
  };

  this.toString = function () {
    var areaCode   = this.areaCode(string);
    var prefix     = this.prefix(string);
    var lineNumber = this.lineNumber(string);

    return `(${areaCode}) ${prefix}-${lineNumber}`;
  };
};

module.exports = PhoneNumber;
