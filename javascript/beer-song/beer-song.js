'use strict';

var BeerSong = function() {

 this.verse = function(count) {

   if(count > 2) {
     var song = `${count} bottles of beer on the wall, ${count} bottles of beer.` +
       `\nTake one down and pass it around, ${count - 1} bottles of beer on the wall.\n`;
   } else if(count === 2) {
     var song = `${count} bottles of beer on the wall, ${count} bottles of beer.` +
       `\nTake one down and pass it around, ${count - 1} bottle of beer on the wall.\n`;
   } else if(count === 1) {
     var song = `${count} bottle of beer on the wall, ${count} bottle of beer.` +
       `\nTake it down and pass it around, no more bottles of beer on the wall.\n`;
   } else {
     var song = 'No more bottles of beer on the wall, no more bottles of beer.' +
       '\nGo to the store and buy some more, 99 bottles of beer on the wall.\n';
   }

   return song;
  }

  this.sing = function(max, min) {

    var count = max;
    var song  = [];

   if (typeof(min)==='undefined') min = 0;

    while (count >= min) {
      song.push(this.verse(count));
      count--;
    }

    return song.join('\n');
  }
};

module.exports = BeerSong;
