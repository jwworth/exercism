require 'openssl'

class Affine
  ALPHA = ('a'..'z').to_a

  attr_reader :key_first, :key_last

  def initialize(key_first, key_last)
    raise ArgumentError if coprime?(key_first, alpha_length)

    @key_first = key_first
    @key_last = key_last
  end

  def encode(plaintext)
    prepare_text(plaintext).map do |letter|
      if index = ALPHA.index(letter)
        replace_index = (key_first * index + key_last) % alpha_length
        ALPHA[replace_index]
      else
        letter
      end
    end.each_slice(5).map(&:join).join(' ')
  end

  def decode(cipher)
    mmi = mmi(key_first, alpha_length)

    prepare_text(cipher).map do |letter|
      if index = ALPHA.index(letter)
        replace_index = mmi * (index - key_last) % alpha_length
        ALPHA[replace_index]
      else
        letter
      end
    end.join
  end

  private

  def coprime?(key_first, length)
    OpenSSL::BN.new(key_first).gcd(length) != 1
  end

  def mmi(key_first, length)
    OpenSSL::BN.new(key_first).mod_inverse(length)
  end

  def prepare_text(text)
    text.downcase.gsub(/\W/, '').chars
  end

  def alpha_length
    @alpha_length ||= ALPHA.length
  end
end
