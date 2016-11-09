var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  if (input === '') input = 'World';
  return `Hello, ${input}!`;
};

module.exports = HelloWorld;
