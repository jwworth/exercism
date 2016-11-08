function Hamming() {}

Hamming.prototype.compute = function(strand1, strand2) {
  var hamming_distance = 0;

  if(strand1.length != strand2.length) {
    throw 'DNA strands must be of equal length.'
  }

  for (i = 0; i < strand1.length; i++) {
    if(strand1[i] != strand2[i]) {
      hamming_distance++
    }
  }

  return hamming_distance;
}

module.exports = Hamming;
