require 'set'

module Isogram
  extend self

  def isogram?(word)
    chars = word.downcase.scan(/\w/)
    chars.length == chars.to_set.length
  end
end
