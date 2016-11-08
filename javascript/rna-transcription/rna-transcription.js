function DnaTranscriber() {}

DnaTranscriber.prototype.toRna = function(dna) {
  var pairs = { C: 'G', G: 'C', A: 'U', T: 'A', };
  var transcription = '';

  for(i = 0; i < dna.length; i++) {
    transcription += pairs[dna[i]];
  }

  return transcription;
};

module.exports = DnaTranscriber;
