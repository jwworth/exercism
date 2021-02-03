module Atbash
  def self.encode(plaintext)
    result = prepare_encode(plaintext).map do |char|
      if index = letters.index(char)
        letters.reverse[index]
      else
        char
      end
    end.join

    chunks_of_five(result)
  end

  def self.decode(cipher)
    prepare_decode(cipher).map do |char|
      if index = letters.reverse.index(char)
        letters[index]
      else
        char
      end
    end.join
  end

  def self.prepare_decode(cipher)
    cipher.gsub(/[^\w]/, '').chars
  end

  def self.prepare_encode(plaintext)
    plaintext.downcase.gsub(/[^\w]/, '').chars
  end

  def self.letters
    ('a'..'z').to_a
  end

  def self.chunks_of_five(encoded)
    encoded.scan(/.{1,5}/).join(' ')
  end
end
