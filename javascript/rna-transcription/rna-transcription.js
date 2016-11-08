function DnaTranscriber() {}

DnaTranscriber.prototype.toRna = function(string) {
  var pairs = {
    C: 'G',
    G: 'C',
    A: 'U',
    T: 'A',
  };
  var transcription = '';

  for(i = 0; i < string.length; i++) {
    transcription += pairs[string[i]];
  }

  return transcription;
};

module.exports = DnaTranscriber;
